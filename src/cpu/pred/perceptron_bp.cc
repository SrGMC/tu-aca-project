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

#include "cpu/pred/perceptron_bp.hh"
#include "cpu/pred/perceptron.hh"
#include "debug/Branch.hh"

PerceptronBP::PerceptronBP(const PerceptronBPParams *params)
    : BPredUnit(params),
      globalHistorySize(params->globalHistorySize),
      perceptronTable(params->PTSize, Perceptron(params->globalHistorySize)),
      PTSize(params->PTSize),
      biasBits(params->biasBits)
{
    if (!isPowerOf2(PTSize)) {
        fatal("Invalid perceptron table size!\n");
    }

    if (biasBits > globalHistorySize/3) {
        fatal("The number of biasing bits for a globalHistorySize of %i must be between 1 and %i!\n", globalHistorySize, (globalHistorySize/3-1));
    }

    /* Setup threshold */
    threshold = 1.93 * globalHistorySize + 14;

    /* Setup globalHistoryMask */
    globalHistoryMask = pow(2, globalHistorySize) - 1;

    DPRINTF(Branch, "Successfully initialized Perceptron predictor\n");
    DPRINTF(Branch, "BHR bitmask: %u\n", globalHistoryMask);
}

bool
PerceptronBP::lookup(ThreadID tid, Addr branch_addr, void * &bp_history)
{   
    /* Use the branch address as an index value, to
     * to get the corresponding perceptron
     */
    unsigned PTAddr = branch_addr & (PTSize - 1);
    Perceptron *perceptron = &perceptronTable[PTAddr];

    /* Generate a globalHistory with the first k
     * bits set to one as a bias
     */
    unsigned globalHistoryBias = globalHistory;
    for (int i = globalHistorySize - 1; i >= globalHistorySize - biasBits; i--){
        unsigned mask = pow(2, i);
        globalHistoryBias |= mask;
    }

    /* Feed the perceptron with the biased global history register
     * and get the prediction. Then convert it into a boolean
     */
    int y = perceptron->getPrediction(globalHistoryBias);
    int prediction = (y > 0) ? 1 : 0;

    /* Create history and update */
    BPHistory *history = new BPHistory;
    history->globalHistory = globalHistory;
    history->y = y;
    history->prediction = prediction;
    bp_history = static_cast<void*>(history);

    DPRINTF(Branch, "Values for branch_addr %X:\n", branch_addr);
    DPRINTF(Branch, " - globalHistory: %X\n", globalHistory);
    DPRINTF(Branch, " - globalHistoryBias: %X\n", globalHistoryBias);
    DPRINTF(Branch, " - y: %i\n", y);
    DPRINTF(Branch, " - prediction: %i\n", prediction);

    return prediction;
}

void
PerceptronBP::uncondBranch(ThreadID tid, Addr pc, void * &bp_history)
{   
    /* Use the branch address as an index value, to
     * to get the corresponding perceptron
     */
    unsigned PTAddr = pc & (PTSize - 1);
    Perceptron *perceptron = &perceptronTable[PTAddr];

    /* Generate a globalHistory with the first k
     * bits set to one as a bias
     */
    unsigned globalHistoryBias = globalHistory;
    for (int i = globalHistorySize - 1; i >= globalHistorySize - biasBits; i--){
        unsigned mask = pow(2, i);
        globalHistoryBias |= mask;
    }

    /* Get the predicted value by the perceptron */
    int y = perceptron->getPrediction(globalHistoryBias);

    /* Create an history object with the current globalHistory, the perceptron
     * prediction and the prediction set as 1. Also update the BHR
     */
    BPHistory *history = new BPHistory;
    history->globalHistory = globalHistory;
    history->y = y;
    history->prediction = 1;
    bp_history = static_cast<void*>(history);

    globalHistory = (globalHistory << 1) | 1;
}

void
PerceptronBP::btbUpdate(ThreadID tid, Addr branch_addr, void * &bp_history)
{
    /* Placeholder as this function is not needed */
    return;
}


void
PerceptronBP::update(ThreadID tid, Addr branch_addr, bool taken,
                     void *bp_history, bool squashed,
                     const StaticInstPtr & inst, Addr corrTarget)
{   
    /* Check that history exists */
    assert(bp_history);
    BPHistory *history = static_cast<BPHistory *>(bp_history);

    /* Use the branch address as an index value, to
     * to get the corresponding perceptron
     */
    unsigned PTAddr = branch_addr & (PTSize - 1);
    Perceptron *perceptron = &perceptronTable[PTAddr];

    /* Generate a globalHistory with the first k
     * bits set to one as a bias
     */
    unsigned globalHistoryBias = history->globalHistory;
    for (int i = globalHistorySize - 1; i >= globalHistorySize - biasBits; i--){
        unsigned mask = pow(2, i);
        globalHistoryBias |= mask;
    }

    /* Feed the perceptron with the biased global history register, the y result in histoy
     * the outcome of the branch and the threshold in order to train the preceptron.
     */
    perceptron->train(history->y, taken, globalHistoryBias, threshold);

    /* If it was squashed, restore the speculatively updated BHR */
    if (squashed) {
        globalHistory = history->globalHistory;
        globalHistory = globalHistory & globalHistoryMask;
    } else {
        /* Delete history at is no longer needed */
        delete history;
    }

    /* Update BHR */
    globalHistory = (globalHistory << 1) | taken;

    DPRINTF(Branch, "Successfully updated Perceptron predictor\n");
}

void
PerceptronBP::squash(ThreadID tid, void *bp_history)
{
    BPHistory *history = static_cast<BPHistory *>(bp_history);

    /* Restore BHR, as a misprediction occured. BP update occurs in PerceptronBP::update */
    globalHistory = history->globalHistory;

    /* Delete history at is no longer needed */
    delete history;
}

/* 
 * Create branch predictor object from parameters
 * @return Branch predictor
 */

PerceptronBP*
PerceptronBPParams::create()
{
    return new PerceptronBP(this);
}
