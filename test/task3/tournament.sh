#!/bin/bash
mkdir results/TournamentBP/logs
mkdir results/TournamentBP/results

mkdir results/TournamentBP/results/blackscholes
timeout -s SIGINT 1800 ./tu-aca-project/test/task3/run.sh TournamentBP scripts/blackscholes/blackscholes_1c_simsmall > results/TournamentBP/logs/blackscholes.txt 2>&1
mv m5out/stats.txt results/TournamentBP/results/blackscholes/

mkdir results/TournamentBP/results/bodytrack
timeout -s SIGINT 1800 ./tu-aca-project/test/task3/run.sh TournamentBP scripts/bodytrack/bodytrack_1c_simsmall > results/TournamentBP/logs/bodytrack.txt 2>&1
mv m5out/stats.txt results/TournamentBP/results/bodytrack/

mkdir results/TournamentBP/results/canneal
timeout -s SIGINT 1800 ./tu-aca-project/test/task3/run.sh TournamentBP scripts/canneal/canneal_1c_simsmall > results/TournamentBP/logs/canneal.txt 2>&1
mv m5out/stats.txt results/TournamentBP/results/canneal/

mkdir results/TournamentBP/results/dedup
timeout -s SIGINT 1800 ./tu-aca-project/test/task3/run.sh TournamentBP scripts/dedup/dedup_1c_simsmall > results/TournamentBP/logs/dedup.txt 2>&1
mv m5out/stats.txt results/TournamentBP/results/dedup/

mkdir results/TournamentBP/results/ferret
timeout -s SIGINT 1800 ./tu-aca-project/test/task3/run.sh TournamentBP scripts/ferret/ferret_1c_simsmall > results/TournamentBP/logs/ferret.txt 2>&1
mv m5out/stats.txt results/TournamentBP/results/ferret/

mkdir results/TournamentBP/results/fluidanimate
timeout -s SIGINT 1800 ./tu-aca-project/test/task3/run.sh TournamentBP scripts/fluidanimate/fluidanimate_1c_simsmall > results/TournamentBP/logs/fluidanimate.txt 2>&1
mv m5out/stats.txt results/TournamentBP/results/fluidanimate/

mkdir results/TournamentBP/results/freqmine
timeout -s SIGINT 1800 ./tu-aca-project/test/task3/run.sh TournamentBP scripts/freqmine/freqmine_1c_simsmall > results/TournamentBP/logs/freqmine.txt 2>&1
mv m5out/stats.txt results/TournamentBP/results/freqmine/

mkdir results/TournamentBP/results/x264
timeout -s SIGINT 1800 ./tu-aca-project/test/task3/run.sh TournamentBP scripts/x264/x264_1c_simsmall > results/TournamentBP/logs/x264.txt 2>&1
mv m5out/stats.txt results/TournamentBP/results/x264/

