#!/bin/bash
mkdir results
mkdir results/AgreeBP
mkdir results/PerceptronBP

# Run 1
mv ./tu-aca-project/test/task1/set1/assets/1.py ./src/cpu/pred/BranchPredictor.py
mkdir results/run1
./tu-aca-project/test/task1/set1/agree.sh &
./tu-aca-project/test/task1/set1/perceptron.sh &
wait

mv results/AgreeBP results/run1/AgreeBP
mv results/PerceptronBP results/run1/PerceptronBP