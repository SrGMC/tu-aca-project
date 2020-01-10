#!/bin/bash
mkdir results
mkdir results/AgreeBP
mkdir results/PerceptronBP

# Run 1
mv ./tu-aca-project/test/task2/set2/assets/1.py ./src/cpu/pred/BranchPredictor.py
mkdir results/run1
scons ./build/ALPHA/gem5.opt -j 4 > results/run1/build.txt
./tu-aca-project/test/task2/set2/agree.sh
./tu-aca-project/test/task2/set2/perceptron.sh

mv results/AgreeBP results/run1/AgreeBP
mv results/PerceptronBP results/run1/PerceptronBP

# Run 2
mv ./tu-aca-project/test/task2/set2/assets/2.py ./src/cpu/pred/BranchPredictor.py
mkdir results/run2
scons ./build/ALPHA/gem5.opt -j 4 > results/run2/build.txt
./tu-aca-project/test/task2/set2/agree.sh
./tu-aca-project/test/task2/set2/perceptron.sh

mv results/AgreeBP results/run2/AgreeBP
mv results/PerceptronBP results/run2/PerceptronBP

# Run 3
mv ./tu-aca-project/test/task2/set2/assets/3.py ./src/cpu/pred/BranchPredictor.py
mkdir results/run3
scons ./build/ALPHA/gem5.opt -j 4 > results/run3/build.txt
./tu-aca-project/test/task2/set2/agree.sh
./tu-aca-project/test/task2/set2/perceptron.sh

mv results/AgreeBP results/run3/AgreeBP
mv results/PerceptronBP results/run3/PerceptronBP

# Run 4
mv ./tu-aca-project/test/task2/set2/assets/4.py ./src/cpu/pred/BranchPredictor.py
mkdir results/run4
scons ./build/ALPHA/gem5.opt -j 4 > results/run4/build.txt
./tu-aca-project/test/task2/set2/agree.sh
./tu-aca-project/test/task2/set2/perceptron.sh

mv results/AgreeBP results/run4/AgreeBP
mv results/PerceptronBP results/run4/PerceptronBP

# Run 5
mv ./tu-aca-project/test/task2/set2/assets/5.py ./src/cpu/pred/BranchPredictor.py
mkdir results/run5
scons ./build/ALPHA/gem5.opt -j 4 > results/run5/build.txt
./tu-aca-project/test/task2/set2/agree.sh
./tu-aca-project/test/task2/set2/perceptron.sh

mv results/AgreeBP results/run5/AgreeBP
mv results/PerceptronBP results/run5/PerceptronBP

# Run 6
mv ./tu-aca-project/test/task2/set2/assets/6.py ./src/cpu/pred/BranchPredictor.py
mkdir results/run6
scons ./build/ALPHA/gem5.opt -j 4 > results/run6/build.txt
./tu-aca-project/test/task2/set2/agree.sh
./tu-aca-project/test/task2/set2/perceptron.sh

mv results/AgreeBP results/run6/AgreeBP
mv results/PerceptronBP results/run6/PerceptronBP