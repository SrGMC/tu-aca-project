/*
 *                     GNU GENERAL PUBLIC LICENSE
 *                     Version 3, 29 June 2007

 * Copyright (C) 2007 Free Software Foundation, Inc. <https://fsf.org/>
 * Everyone is permitted to copy and distribute verbatim copies
 * of this license document, but changing it is not allowed.
 *
 * Author: Álvaro Galisteo
 */

#include "cpu/pred/template.hh"

#include "base/bitfield.hh"
#include "base/intmath.hh"

TemplateBP::TemplateBP(const TemplateBPParams *params)
    : BPredUnit(params)
    /* Setup variables here */
{
    /* Setup checks and configurations here */
}

bool
TemplateBP::lookup(ThreadID tid, Addr branch_addr, void * &bp_history)
{
    /* Prediction outcome here */
    return true;
}

void
TemplateBP::uncondBranch(ThreadID tid, Addr pc, void * &bp_history)
{
    /* Implementation here */
}

void
TemplateBP::btbUpdate(ThreadID tid, Addr branch_addr, void * &bp_history)
{
    /* Implementation here */
}

void
TemplateBP::update(ThreadID tid, Addr branch_addr, bool taken,
                     void *bp_history, bool squashed,
                     const StaticInstPtr & inst, Addr corrTarget)
{   
    /* Implementation here */
}

void
TemplateBP::squash(ThreadID tid, void *bp_history)
{
    /* Implementation here */
}

/* 
 * Create branch predictor object from parameters
 * @return Branch predictor
 */

TemplateBP*
TemplateBPParams::create()
{
    return new TemplateBP(this);
}
