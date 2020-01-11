#!/bin/bash
mkdir results/LTAGE/logs
mkdir results/LTAGE/results

mkdir results/LTAGE/results/blackscholes
timeout -s SIGINT 1800 ./tu-aca-project/test/task3/run.sh LTAGE scripts/blackscholes/blackscholes_1c_simsmall > results/LTAGE/logs/blackscholes.txt 2>&1
mv m5out/stats.txt results/LTAGE/results/blackscholes/

mkdir results/LTAGE/results/bodytrack
timeout -s SIGINT 1800 ./tu-aca-project/test/task3/run.sh LTAGE scripts/bodytrack/bodytrack_1c_simsmall > results/LTAGE/logs/bodytrack.txt 2>&1
mv m5out/stats.txt results/LTAGE/results/bodytrack/

mkdir results/LTAGE/results/canneal
timeout -s SIGINT 1800 ./tu-aca-project/test/task3/run.sh LTAGE scripts/canneal/canneal_1c_simsmall > results/LTAGE/logs/canneal.txt 2>&1
mv m5out/stats.txt results/LTAGE/results/canneal/

mkdir results/LTAGE/results/dedup
timeout -s SIGINT 1800 ./tu-aca-project/test/task3/run.sh LTAGE scripts/dedup/dedup_1c_simsmall > results/LTAGE/logs/dedup.txt 2>&1
mv m5out/stats.txt results/LTAGE/results/dedup/

mkdir results/LTAGE/results/ferret
timeout -s SIGINT 1800 ./tu-aca-project/test/task3/run.sh LTAGE scripts/ferret/ferret_1c_simsmall > results/LTAGE/logs/ferret.txt 2>&1
mv m5out/stats.txt results/LTAGE/results/ferret/

mkdir results/LTAGE/results/fluidanimate
timeout -s SIGINT 1800 ./tu-aca-project/test/task3/run.sh LTAGE scripts/fluidanimate/fluidanimate_1c_simsmall > results/LTAGE/logs/fluidanimate.txt 2>&1
mv m5out/stats.txt results/LTAGE/results/fluidanimate/

mkdir results/LTAGE/results/freqmine
timeout -s SIGINT 1800 ./tu-aca-project/test/task3/run.sh LTAGE scripts/freqmine/freqmine_1c_simsmall > results/LTAGE/logs/freqmine.txt 2>&1
mv m5out/stats.txt results/LTAGE/results/freqmine/

mkdir results/LTAGE/results/x264
timeout -s SIGINT 1800 ./tu-aca-project/test/task3/run.sh LTAGE scripts/x264/x264_1c_simsmall > results/LTAGE/logs/x264.txt 2>&1
mv m5out/stats.txt results/LTAGE/results/x264/
