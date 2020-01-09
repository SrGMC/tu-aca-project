/*
 *                     GNU GENERAL PUBLIC LICENSE
 *                     Version 3, 29 June 2007

 * Copyright (C) 2007 Free Software Foundation, Inc. <https://fsf.org/>
 * Everyone is permitted to copy and distribute verbatim copies
 * of this license document, but changing it is not allowed.
 *
 * Author: Álvaro Galisteo
 */

#ifndef __CPU_PRED_AGREE_PRED_HH__
#define __CPU_PRED_AGREE_PRED_HH__

#include <vector>

#include "base/sat_counter.hh"
#include "base/types.hh"
#include "cpu/pred/bpred_unit.hh"
#include "params/AgreeBP.hh"

class AgreeBP : public BPredUnit
{
  public:
    /**
     * Default branch predictor constructor.
     */
    AgreeBP(const AgreeBPParams *params);

    /**
     * Looks up the given address in the branch predictor and returns
     * a true/false value as to whether it is taken.  Also creates a
     * BPHistory object to store any state it will need on squash/update.
     * @param branch_addr The address of the branch to look up.
     * @param bp_history Pointer that will be set to the BPHistory object.
     * @return Whether or not the branch is taken.
     */
    bool lookup(ThreadID tid, Addr branch_addr, void * &bp_history);

    /**
     * Records that there was an unconditional branch, and modifies
     * the bp history to point to an object that has the previous
     * global history stored in it.
     * @param bp_history Pointer that will be set to the BPHistory object.
     */
    void uncondBranch(ThreadID tid, Addr pc, void * &bp_history);

    /**
     * Updates the branch predictor to Not Taken if a BTB entry is
     * invalid or not found.
     * @param branch_addr The address of the branch to look up.
     * @param bp_history Pointer to any bp history state.
     * @return Whether or not the branch is taken.
     */
    void btbUpdate(ThreadID tid, Addr branch_addr, void * &bp_history);

    /**
     * Updates the branch predictor with the actual result of a branch.
     * @param branch_addr The address of the branch to update.
     * @param taken Whether or not the branch was taken.
     * @param bp_history Pointer to the BPHistory object that was created
     * when the branch was predicted.
     * @param squashed is set when this function is called during a squash
     * operation.
     * @param inst Static instruction information
     * @param corrTarget Resolved target of the branch (only needed if
     * squashed)
     */
    void update(ThreadID tid, Addr branch_addr, bool taken, void *bp_history,
                bool squashed, const StaticInstPtr & inst, Addr corrTarget);

    /**
     * Restores the global branch history on a squash.
     * @param bp_history Pointer to the BPHistory object that has the
     * previous global branch history in it.
     */
    void squash(ThreadID tid, void *bp_history);


  private:

    struct BPHistory {
        /* Branch address */
        Addr branch_addr;
        /* Global History Register */
        unsigned globalHistory;
        /*Prediction of BBS*/
        bool BBSpred;
        /* Saturating counter of PHT */
        unsigned short PHTcounter;
        /* Final prediction */
        bool prediction;
    };

    /*
     * Global History Register. Taken from TournamentBP.
     */

    /** Global history register. Contains as much history as specified by
     *  globalHistoryBits. */
    unsigned globalHistory;

    /** Number of bits for the global history. */
    unsigned globalHistorySize;

    /** Global history mask. Based on globalHistorySize */
    unsigned globalHistoryMask;

    /*
     * Pattern History Table.
     */

    /** Pattern history table with saturating counters */
    std::vector<SatCounter> PatternHistoryTable;

    /** Size of the PHT. Based on based on globalHistoryBits */
    unsigned PHTSize;

    /** Number of bits of the saturating counters */
    unsigned satCounterBits;

    /*
     * Biasing Bit Storage
     */

    /** Biasing bit storage with booleans */
    std::vector<bool> BiasingBitStorage;

    /** Size of the BBS vector */
    unsigned BBSSize;
};

#endif // __CPU_PRED_AGREE_PRED_HH__
