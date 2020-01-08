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

#include "base/bitfield.hh"
#include "base/intmath.hh"

AgreeBP::AgreeBP(const AgreeBPParams *params)
    : BPredUnit(params),
      globalHistorySize(params->globalHistorySize),
      PHTSize(params->PHTSize),
      satCounterBits(params->satCounterBits),
      BBSSize(params->BBSSize)
{
    if (!isPowerOf2(globalHistorySize)) {
        fatal("Invalid global history size!\n");
    }

    if (!isPowerOf2(PHTSize)) {
        fatal("Invalid pattern history table size!\n");
    }

    if (!isPowerOf2(BBSSize)) {
        fatal("Invalid biasing bit storage size!\n");
    }

    if (satCounterBits < 1 || satCounterBits > 4) {
        fatal("The number of bits in the saturating counter must be between 1 and 4!\n");
    }

    globalHistory.resize(globalHistorySize);
    BiasingBitStorage.resize(BBSSize);
    PatternHistoryTable.pesize(PHTSize);

    /* As most branches are usually taken, initialize them to taken (1)*/
    for (int i = 0; i < globalHistorySize; ++i) {
        globalHistory[i] = 1;
    }
    for (int i = 0; i < BBSSize; ++i) {
        BiasingBitStorage[i] = 1;
    }

    /* Initialize saturating counters to not taken (0)*/
    for (int i = 0; i < PHTSize; ++i) {
        PatternHistoryTable[i] = SatCounter(satCounterBits);
    }
}

bool
AgreeBP::lookup(ThreadID tid, Addr branch_addr, void * &bp_history)
{
    /* Prediction outcome here */
    return true;
}

void
AgreeBP::uncondBranch(ThreadID tid, Addr pc, void * &bp_history)
{
    /* Implementation here */
}

void
AgreeBP::btbUpdate(ThreadID tid, Addr branch_addr, void * &bp_history)
{
    /* Implementation here */
}

void
AgreeBP::update(ThreadID tid, Addr branch_addr, bool taken,
                     void *bp_history, bool squashed,
                     const StaticInstPtr & inst, Addr corrTarget)
{   
    /* Implementation here */
}

void
AgreeBP::squash(ThreadID tid, void *bp_history)
{
    /* Implementation here */
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
