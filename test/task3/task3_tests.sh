#!/bin/bash
mkdir results
mkdir results/AgreeBP
mkdir results/BiModeBP
mkdir results/LocalBP
mkdir results/LTAGE
mkdir results/PerceptronBP
mkdir results/TournamentBP

./tu-aca-project/agree.sh &
./tu-aca-project/bimode.sh &
./tu-aca-project/local.sh &
wait

./tu-aca-project/ltage.sh &
./tu-aca-project/perceptron.sh &
./tu-aca-project/tournament.sh &
wait