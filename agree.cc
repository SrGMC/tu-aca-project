/*
 *                     GNU GENERAL PUBLIC LICENSE
 *                     Version 3, 29 June 2007

 * Copyright (C) 2007 Free Software Foundation, Inc. <https://fsf.org/>
 * Everyone is permitted to copy and distribute verbatim copies
 * of this license document, but changing it is not allowed.
 *
 * Author: Álvaro Galisteo
 */

#include <cmath>

#include "cpu/pred/agree.hh"
#include "debug/Branch.hh"

AgreeBP::AgreeBP(const AgreeBPParams *params)
    : BPredUnit(params),
      globalHistorySize(params->globalHistorySize),
      PatternHistoryTable(params->PHTSize, SatCounter(params->satCounterBits)),
      PHTSize(params->PHTSize),
      satCounterBits(params->satCounterBits),
      BBSSize(params->BBSSize)
{
    if (!isPowerOf2(PHTSize)) {
        fatal("Invalid pattern history table size!\n");
    }

    if (!isPowerOf2(BBSSize)) {
        fatal("Invalid biasing bit storage size!\n");
    }

    if (satCounterBits < 1 || satCounterBits > 4) {
        fatal("The number of bits in the saturating counter must be between 1 and 4!\n");
    }

    BiasingBitStorage.resize(BBSSize);

    /* As most branches are usually taken, initialize them to not-taken (0)
     * so prediction is taken (1)*/
    for (int i = 0; i < BBSSize; ++i) {
        BiasingBitStorage[i] = 0;
    }

    /* Setup globalHistoryMask */
    globalHistoryMask = pow(2, globalHistorySize) - 1;

    DPRINTF(Branch, "Successfully initialized Agree predictor\n");
    DPRINTF(Branch, "BHR bitmask: %u\n", globalHistoryMask);
}

bool
AgreeBP::lookup(ThreadID tid, Addr branch_addr, void * &bp_history)
{

    /* Get Branch History register value, then XOR this value with the branch address
     * and get the LSBs as address for the PHT. 
     * Finally, get the MSB bit in the PHT and store it.
     */
    unsigned bhr = globalHistory & globalHistoryMask;
    unsigned PHTAddr = (branch_addr ^ bhr) & (PHTSize - 1);
    bool PHTagree = (PatternHistoryTable[PHTAddr] >> (satCounterBits - 1));

    /* Get the Biasing Bit Storage address from branch_addr and
     * store its value.
     */
    unsigned BBSAddr = branch_addr & (BBSSize - 1);
    bool BBSpred = BiasingBitStorage[BBSAddr];

    /* XNOR is the same as boolean equality */
    bool prediction = PHTagree == BBSpred;

    /* Create history and update */
    BPHistory *history = new BPHistory;
    history->branch_addr = branch_addr;
    history->globalHistory = globalHistory;
    history->BBSpred = BBSpred;
    history->PHTcounter = PatternHistoryTable[PHTAddr];
    history->prediction = prediction;
    bp_history = static_cast<void*>(history);

    DPRINTF(Branch, "Values for branch_addr %X:\n", branch_addr);
    DPRINTF(Branch, " - globalHistory: %X", globalHistory);
    DPRINTF(Branch, " - PHTagree: %i\n", PHTagree);
    DPRINTF(Branch, " - BBSpred: %i\n", BBSpred);
    DPRINTF(Branch, " - prediction: %i\n", prediction);
    DPRINTF(Branch, " - history->PHTcounter: %i\n", history->PHTcounter);
    DPRINTF(Branch, " - PHTcounter: %i\n", (unsigned short)PatternHistoryTable[PHTAddr]);

    return prediction;
}

void
AgreeBP::uncondBranch(ThreadID tid, Addr pc, void * &bp_history)
{   
    BPHistory *history = new BPHistory;
    history->branch_addr = pc;
    history->globalHistory = globalHistory;
    history->BBSpred = 1;
    /* Make the PHT counter agree, but at the verge */
    history->PHTcounter = pow(2, satCounterBits - 1);
    history->prediction = 1;
    bp_history = static_cast<void*>(history);

    globalHistory = (globalHistory << 1) | 1;
}

void
AgreeBP::btbUpdate(ThreadID tid, Addr branch_addr, void * &bp_history)
{
    /* Placeholder as this function is not needed */
    return;
}


void
AgreeBP::update(ThreadID tid, Addr branch_addr, bool taken,
                     void *bp_history, bool squashed,
                     const StaticInstPtr & inst, Addr corrTarget)
{   
    /* Check that history exists */
    assert(bp_history);
    BPHistory *history = static_cast<BPHistory *>(bp_history);

    unsigned bhr = history->globalHistory & globalHistoryMask;
    unsigned PHTAddr = (branch_addr ^ bhr) & (PHTSize - 1);

    /* If direction agrees with BBS bit, increment. Decrease otherwise */
    if (taken && history->BBSpred){
        PatternHistoryTable[PHTAddr]++;
    } else {
        PatternHistoryTable[PHTAddr]--;
    }

    /* If it was squashed, restore the speculatively updated BHR */
    if (squashed) {
        globalHistory = history->globalHistory;
        globalHistory = globalHistory & globalHistoryMask;
    } else {
        /* Delete history at is no longer needed */
        delete history;
    }

    /* Get the Biasing Bit Storage address from branch_addr and
     * update its value.
     */
    unsigned BBSAddr = branch_addr & (BBSSize - 1);
    BiasingBitStorage[BBSAddr] = taken;

    /* Update BHR */
    globalHistory = (globalHistory << 1) | taken;

    DPRINTF(Branch, "Successfully updated Agree predictor\n");
}

void
AgreeBP::squash(ThreadID tid, void *bp_history)
{
    BPHistory *history = static_cast<BPHistory *>(bp_history);

    /* Restore BHR, as a misprediction occured. BP update occurs in AgreeBP::update */
    globalHistory = history->globalHistory;

    /* Delete history at is no longer needed */
    delete history;
}

/* 
 * Create branch predictor object from parameters
 * @return Branch predictor
 */

AgreeBP*
AgreeBPParams::create()
{
    return new AgreeBP(this);
}
