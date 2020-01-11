#!/bin/bash
mkdir results/BiModeBP/logs
mkdir results/BiModeBP/results

mkdir results/BiModeBP/results/blackscholes
timeout -s SIGINT 1800 ./tu-aca-project/test/task3/run.sh BiModeBP scripts/blackscholes/blackscholes_1c_simsmall > results/BiModeBP/logs/blackscholes.txt 2>&1
mv m5out/stats.txt results/BiModeBP/results/blackscholes/

mkdir results/BiModeBP/results/bodytrack
timeout -s SIGINT 1800 ./tu-aca-project/test/task3/run.sh BiModeBP scripts/bodytrack/bodytrack_1c_simsmall > results/BiModeBP/logs/bodytrack.txt 2>&1
mv m5out/stats.txt results/BiModeBP/results/bodytrack/

mkdir results/BiModeBP/results/canneal
timeout -s SIGINT 1800 ./tu-aca-project/test/task3/run.sh BiModeBP scripts/canneal/canneal_1c_simsmall > results/BiModeBP/logs/canneal.txt 2>&1
mv m5out/stats.txt results/BiModeBP/results/canneal/

mkdir results/BiModeBP/results/dedup
timeout -s SIGINT 1800 ./tu-aca-project/test/task3/run.sh BiModeBP scripts/dedup/dedup_1c_simsmall > results/BiModeBP/logs/dedup.txt 2>&1
mv m5out/stats.txt results/BiModeBP/results/dedup/

mkdir results/BiModeBP/results/ferret
timeout -s SIGINT 1800 ./tu-aca-project/test/task3/run.sh BiModeBP scripts/ferret/ferret_1c_simsmall > results/BiModeBP/logs/ferret.txt 2>&1
mv m5out/stats.txt results/BiModeBP/results/ferret/

mkdir results/BiModeBP/results/fluidanimate
timeout -s SIGINT 1800 ./tu-aca-project/test/task3/run.sh BiModeBP scripts/fluidanimate/fluidanimate_1c_simsmall > results/BiModeBP/logs/fluidanimate.txt 2>&1
mv m5out/stats.txt results/BiModeBP/results/fluidanimate/

mkdir results/BiModeBP/results/freqmine
timeout -s SIGINT 1800 ./tu-aca-project/test/task3/run.sh BiModeBP scripts/freqmine/freqmine_1c_simsmall > results/BiModeBP/logs/freqmine.txt 2>&1
mv m5out/stats.txt results/BiModeBP/results/freqmine/

mkdir results/BiModeBP/results/x264
timeout -s SIGINT 1800 ./tu-aca-project/test/task3/run.sh BiModeBP scripts/x264/x264_1c_simsmall > results/BiModeBP/logs/x264.txt 2>&1
mv m5out/stats.txt results/BiModeBP/results/x264/
