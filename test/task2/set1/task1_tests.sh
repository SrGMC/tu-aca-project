#!/bin/bash
mkdir results

# Run 1
#mkdir results/AgreeBP
#mkdir results/PerceptronBP
#cp ./tu-aca-project/test/task2/set1/assets/1.py ./src/cpu/pred/BranchPredictor.py
#mkdir results/run1
#scons ./build/ALPHA/gem5.opt -j 4 > results/run1/build.txt
#./tu-aca-project/test/task2/set1/agree.sh
#./tu-aca-project/test/task2/set1/perceptron.sh

#mv results/AgreeBP results/run1/AgreeBP
#mv results/PerceptronBP results/run1/PerceptronBP

# Run 2
mkdir results/AgreeBP
mkdir results/PerceptronBP
cp ./tu-aca-project/test/task2/set1/assets/2.py ./src/cpu/pred/BranchPredictor.py
mkdir results/run2
scons ./build/ALPHA/gem5.opt -j 4 > results/run2/build.txt
./tu-aca-project/test/task2/set1/agree.sh
./tu-aca-project/test/task2/set1/perceptron.sh

mv results/AgreeBP results/run2/AgreeBP
mv results/PerceptronBP results/run2/PerceptronBP

# Run 3
mkdir results/AgreeBP
mkdir results/PerceptronBP
cp ./tu-aca-project/test/task2/set1/assets/3.py ./src/cpu/pred/BranchPredictor.py
mkdir results/run3
scons ./build/ALPHA/gem5.opt -j 4 > results/run3/build.txt
./tu-aca-project/test/task2/set1/agree.sh
./tu-aca-project/test/task2/set1/perceptron.sh

mv results/AgreeBP results/run3/AgreeBP
mv results/PerceptronBP results/run3/PerceptronBP

# Run 4
mkdir results/AgreeBP
mkdir results/PerceptronBP
cp ./tu-aca-project/test/task2/set1/assets/4.py ./src/cpu/pred/BranchPredictor.py
mkdir results/run4
scons ./build/ALPHA/gem5.opt -j 4 > results/run4/build.txt
./tu-aca-project/test/task2/set1/agree.sh
./tu-aca-project/test/task2/set1/perceptron.sh

mv results/AgreeBP results/run4/AgreeBP
mv results/PerceptronBP results/run4/PerceptronBP

# Run 5
mkdir results/AgreeBP
mkdir results/PerceptronBP
cp ./tu-aca-project/test/task2/set1/assets/5.py ./src/cpu/pred/BranchPredictor.py
mkdir results/run5
scons ./build/ALPHA/gem5.opt -j 4 > results/run5/build.txt
./tu-aca-project/test/task2/set1/agree.sh
./tu-aca-project/test/task2/set1/perceptron.sh

mv results/AgreeBP results/run5/AgreeBP
mv results/PerceptronBP results/run5/PerceptronBP

# Run 6
mkdir results/AgreeBP
mkdir results/PerceptronBP
cp ./tu-aca-project/test/task2/set1/assets/6.py ./src/cpu/pred/BranchPredictor.py
mkdir results/run6
scons ./build/ALPHA/gem5.opt -j 4 > results/run6/build.txt
./tu-aca-project/test/task2/set1/agree.sh
./tu-aca-project/test/task2/set1/perceptron.sh

mv results/AgreeBP results/run6/AgreeBP
mv results/PerceptronBP results/run6/PerceptronBP