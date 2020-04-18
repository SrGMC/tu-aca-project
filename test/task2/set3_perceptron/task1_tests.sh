#!/bin/bash
mkdir results

# Run 1
mkdir results/PerceptronBP
cp ./tu-aca-project/test/task2/set3_perceptron/assets/1.py ./src/cpu/pred/BranchPredictor.py
mkdir results/run1
scons ./build/ALPHA/gem5.opt -j 4 > results/run1/build.txt
./tu-aca-project/test/task2/set3_perceptron/perceptron.sh

mv results/PerceptronBP results/run1/PerceptronBP

# Run 2
mkdir results/PerceptronBP
cp ./tu-aca-project/test/task2/set3_perceptron/assets/2.py ./src/cpu/pred/BranchPredictor.py
mkdir results/run2
scons ./build/ALPHA/gem5.opt -j 4 > results/run2/build.txt
./tu-aca-project/test/task2/set3_perceptron/perceptron.sh

mv results/PerceptronBP results/run2/PerceptronBP