#!/bin/bash
mkdir results
mkdir results/AgreeBP
mkdir results/BiModeBP
mkdir results/LocalBP
mkdir results/LTAGE
mkdir results/PerceptronBP
mkdir results/TournamentBP

./tu-aca-project/test/task3/agree.sh &
./tu-aca-project/test/task3/bimode.sh &
./tu-aca-project/test/task3/local.sh &
wait

./tu-aca-project/test/task3/ltage.sh &
./tu-aca-project/test/task3/perceptron.sh &
./tu-aca-project/test/task3/tournament.sh &
wait