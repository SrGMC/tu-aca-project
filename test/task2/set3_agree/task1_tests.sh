#!/bin/bash
mkdir results

# Run 1
mkdir results/AgreeBP
cp ./tu-aca-project/test/task2/set3_agree/assets/1.py ./src/cpu/pred/BranchPredictor.py
mkdir results/run1
scons ./build/ALPHA/gem5.opt -j 4 > results/run1/build.txt
./tu-aca-project/test/task2/set3_agree/agree.sh

mv results/AgreeBP results/run1/AgreeBP

# Run 2
mkdir results/AgreeBP
cp ./tu-aca-project/test/task2/set3_agree/assets/2.py ./src/cpu/pred/BranchPredictor.py
mkdir results/run2
scons ./build/ALPHA/gem5.opt -j 4 > results/run2/build.txt
./tu-aca-project/test/task2/set3_agree/agree.sh

mv results/AgreeBP results/run2/AgreeBP