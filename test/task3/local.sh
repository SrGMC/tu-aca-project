#!/bin/bash
mkdir results/LocalBP/logs
mkdir results/LocalBP/results

mkdir results/LocalBP/results/blackscholes
timeout -s SIGINT 1800 ./tu-aca-project/test/task3/run.sh LocalBP scripts/blackscholes/blackscholes_1c_simsmall > results/LocalBP/logs/blackscholes.txt 2>&1
mv m5out/stats.txt results/LocalBP/results/blackscholes/

mkdir results/LocalBP/results/bodytrack
timeout -s SIGINT 1800 ./tu-aca-project/test/task3/run.sh LocalBP scripts/bodytrack/bodytrack_1c_simsmall > results/LocalBP/logs/bodytrack.txt 2>&1
mv m5out/stats.txt results/LocalBP/results/bodytrack/

mkdir results/LocalBP/results/canneal
timeout -s SIGINT 1800 ./tu-aca-project/test/task3/run.sh LocalBP scripts/canneal/canneal_1c_simsmall > results/LocalBP/logs/canneal.txt 2>&1
mv m5out/stats.txt results/LocalBP/results/canneal/

mkdir results/LocalBP/results/dedup
timeout -s SIGINT 1800 ./tu-aca-project/test/task3/run.sh LocalBP scripts/dedup/dedup_1c_simsmall > results/LocalBP/logs/dedup.txt 2>&1
mv m5out/stats.txt results/LocalBP/results/dedup/

mkdir results/LocalBP/results/ferret
timeout -s SIGINT 1800 ./tu-aca-project/test/task3/run.sh LocalBP scripts/ferret/ferret_1c_simsmall > results/LocalBP/logs/ferret.txt 2>&1
mv m5out/stats.txt results/LocalBP/results/ferret/

mkdir results/LocalBP/results/fluidanimate
timeout -s SIGINT 1800 ./tu-aca-project/test/task3/run.sh LocalBP scripts/fluidanimate/fluidanimate_1c_simsmall > results/LocalBP/logs/fluidanimate.txt 2>&1
mv m5out/stats.txt results/LocalBP/results/fluidanimate/

mkdir results/LocalBP/results/freqmine
timeout -s SIGINT 1800 ./tu-aca-project/test/task3/run.sh LocalBP scripts/freqmine/freqmine_1c_simsmall > results/LocalBP/logs/freqmine.txt 2>&1
mv m5out/stats.txt results/LocalBP/results/freqmine/

mkdir results/LocalBP/results/x264
timeout -s SIGINT 1800 ./tu-aca-project/test/task3/run.sh LocalBP scripts/x264/x264_1c_simsmall > results/LocalBP/logs/x264.txt 2>&1
mv m5out/stats.txt results/LocalBP/results/x264/
