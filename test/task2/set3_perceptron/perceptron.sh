#!/bin/bash
mkdir results/PerceptronBP/logs
mkdir results/PerceptronBP/results

mkdir results/PerceptronBP/results/blackscholes
timeout -s SIGINT 1800 ./tu-aca-project/test/task3/run.sh PerceptronBP scripts/blackscholes/blackscholes_1c_simsmall > results/PerceptronBP/logs/blackscholes.txt 2>&1
mv m5out/stats.txt results/PerceptronBP/results/blackscholes/

mkdir results/PerceptronBP/results/bodytrack
timeout -s SIGINT 1800 ./tu-aca-project/test/task3/run.sh PerceptronBP scripts/bodytrack/bodytrack_1c_simsmall > results/PerceptronBP/logs/bodytrack.txt 2>&1
mv m5out/stats.txt results/PerceptronBP/results/bodytrack/

mkdir results/PerceptronBP/results/canneal
timeout -s SIGINT 1800 ./tu-aca-project/test/task3/run.sh PerceptronBP scripts/canneal/canneal_1c_simsmall > results/PerceptronBP/logs/canneal.txt 2>&1
mv m5out/stats.txt results/PerceptronBP/results/canneal/

mkdir results/PerceptronBP/results/dedup
timeout -s SIGINT 1800 ./tu-aca-project/test/task3/run.sh PerceptronBP scripts/dedup/dedup_1c_simsmall > results/PerceptronBP/logs/dedup.txt 2>&1
mv m5out/stats.txt results/PerceptronBP/results/dedup/

mkdir results/PerceptronBP/results/ferret
timeout -s SIGINT 1800 ./tu-aca-project/test/task3/run.sh PerceptronBP scripts/ferret/ferret_1c_simsmall > results/PerceptronBP/logs/ferret.txt 2>&1
mv m5out/stats.txt results/PerceptronBP/results/ferret/

mkdir results/PerceptronBP/results/fluidanimate
timeout -s SIGINT 1800 ./tu-aca-project/test/task3/run.sh PerceptronBP scripts/fluidanimate/fluidanimate_1c_simsmall > results/PerceptronBP/logs/fluidanimate.txt 2>&1
mv m5out/stats.txt results/PerceptronBP/results/fluidanimate/

mkdir results/PerceptronBP/results/freqmine
timeout -s SIGINT 1800 ./tu-aca-project/test/task3/run.sh PerceptronBP scripts/freqmine/freqmine_1c_simsmall > results/PerceptronBP/logs/freqmine.txt 2>&1
mv m5out/stats.txt results/PerceptronBP/results/freqmine/

mkdir results/PerceptronBP/results/x264
timeout -s SIGINT 1800 ./tu-aca-project/test/task3/run.sh PerceptronBP scripts/x264/x264_1c_simsmall > results/PerceptronBP/logs/x264.txt 2>&1
mv m5out/stats.txt results/PerceptronBP/results/x264/
