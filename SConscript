# -*- mode:python -*-

# Copyright (c) 2006 The Regents of The University of Michigan
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are
# met: redistributions of source code must retain the above copyright
# notice, this list of conditions and the following disclaimer;
# redistributions in binary form must reproduce the above copyright
# notice, this list of conditions and the following disclaimer in the
# documentation and/or other materials provided with the distribution;
# neither the name of the copyright holders nor the names of its
# contributors may be used to endorse or promote products derived from
# this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
# "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
# LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
# A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
# OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
# SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
# LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
# DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
# THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
# (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
# OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#
# Authors: Steve Reinhardt

Import('*')

if env['TARGET_ISA'] == 'null':
    Return()

SimObject('BranchPredictor.py')

DebugFlag('Indirect')
Source('bpred_unit.cc')
Source('2bit_local.cc')
Source('btb.cc')
Source('simple_indirect.cc')
Source('indirect.cc')
Source('ras.cc')
Source('tournament.cc')
Source ('bi_mode.cc')
Source('tage_base.cc')
Source('tage.cc')
Source('loop_predictor.cc')
Source('ltage.cc')
Source('multiperspective_perceptron.cc')
Source('multiperspective_perceptron_8KB.cc')
Source('multiperspective_perceptron_64KB.cc')
Source('multiperspective_perceptron_tage.cc')
Source('multiperspective_perceptron_tage_8KB.cc')
Source('multiperspective_perceptron_tage_64KB.cc')
Source('statistical_corrector.cc')
Source('tage_sc_l.cc')
Source('tage_sc_l_8KB.cc')
Source('tage_sc_l_64KB.cc')
DebugFlag('FreeList')
DebugFlag('Branch')
DebugFlag('Tage')
DebugFlag('LTage')
DebugFlag('TageSCL')
Source('agree_bp.cc')
Source('perceptron_bp.cc')
Source('perceptron.cc')