#!/bin/bash
mkdir results/AgreeBP/logs
mkdir results/AgreeBP/results

mkdir results/AgreeBP/results/blackscholes
timeout -s SIGINT 1800 ./tu-aca-project/test/task3/run.sh AgreeBP scripts/blackscholes/blackscholes_1c_simsmall > results/AgreeBP/logs/blackscholes.txt 2>&1
mv m5out/stats.txt results/AgreeBP/results/blackscholes/

mkdir results/AgreeBP/results/bodytrack
timeout -s SIGINT 1800 ./tu-aca-project/test/task3/run.sh AgreeBP scripts/bodytrack/bodytrack_1c_simsmall > results/AgreeBP/logs/bodytrack.txt 2>&1
mv m5out/stats.txt results/AgreeBP/results/bodytrack/

mkdir results/AgreeBP/results/canneal
timeout -s SIGINT 1800 ./tu-aca-project/test/task3/run.sh AgreeBP scripts/canneal/canneal_1c_simsmall > results/AgreeBP/logs/canneal.txt 2>&1
mv m5out/stats.txt results/AgreeBP/results/canneal/

mkdir results/AgreeBP/results/dedup
timeout -s SIGINT 1800 ./tu-aca-project/test/task3/run.sh AgreeBP scripts/dedup/dedup_1c_simsmall > results/AgreeBP/logs/dedup.txt 2>&1
mv m5out/stats.txt results/AgreeBP/results/dedup/

mkdir results/AgreeBP/results/facesim
timeout -s SIGINT 1800 ./tu-aca-project/test/task3/run.sh AgreeBP scripts/facesim/facesim_1c_simsmall > results/AgreeBP/logs/facesim.txt 2>&1
mv m5out/stats.txt results/AgreeBP/results/facesim/

mkdir results/AgreeBP/results/ferret
timeout -s SIGINT 1800 ./tu-aca-project/test/task3/run.sh AgreeBP scripts/ferret/ferret_1c_simsmall > results/AgreeBP/logs/ferret.txt 2>&1
mv m5out/stats.txt results/AgreeBP/results/ferret/

mkdir results/AgreeBP/results/fluidanimate
timeout -s SIGINT 1800 ./tu-aca-project/test/task3/run.sh AgreeBP scripts/fluidanimate/fluidanimate_1c_simsmall > results/AgreeBP/logs/fluidanimate.txt 2>&1
mv m5out/stats.txt results/AgreeBP/results/fluidanimate/

mkdir results/AgreeBP/results/freqmine
timeout -s SIGINT 1800 ./tu-aca-project/test/task3/run.sh AgreeBP scripts/freqmine/freqmine_1c_simsmall > results/AgreeBP/logs/freqmine.txt 2>&1
mv m5out/stats.txt results/AgreeBP/results/freqmine/

mkdir results/AgreeBP/results/swaptions
timeout -s SIGINT 1800 ./tu-aca-project/test/task3/run.sh AgreeBP scripts/swaptions/swaptions_1c_simsmall > results/AgreeBP/logs/swaptions.txt 2>&1
mv m5out/stats.txt results/AgreeBP/results/swaptions/

mkdir results/AgreeBP/results/vips
timeout -s SIGINT 1800 ./tu-aca-project/test/task3/run.sh AgreeBP scripts/vips/vips_1c_simsmall > results/AgreeBP/logs/vips.txt 2>&1
mv m5out/stats.txt results/AgreeBP/results/vips/

mkdir results/AgreeBP/results/x264
timeout -s SIGINT 1800 ./tu-aca-project/test/task3/run.sh AgreeBP scripts/x264/x264_1c_simsmall > results/AgreeBP/logs/x264.txt 2>&1
mv m5out/stats.txt results/AgreeBP/results/x264/

mkdir results/AgreeBP/results/rtview
timeout -s SIGINT 1800 ./tu-aca-project/test/task3/run.sh AgreeBP scripts/rtview/rtview_1c_simsmall > results/AgreeBP/logs/rtview.txt 2>&1
mv m5out/stats.txt results/AgreeBP/results/rtview/