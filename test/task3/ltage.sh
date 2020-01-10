#!/bin/bash
mkdir results/LTAGE/logs
mkdir results/LTAGE/results

mkdir results/LTAGE/results/blackscholes
./tu-aca-project/test/task3/run.sh LTAGE scripts/blackscholes/blackscholes_1c_simsmall > results/LTAGE/logs/blackscholes.txt 2>&1
mv m5out/stats.txt results/LTAGE/results/blackscholes/

mkdir results/LTAGE/results/bodytrack
./tu-aca-project/test/task3/run.sh LTAGE scripts/bodytrack/bodytrack_1c_simsmall > results/LTAGE/logs/bodytrack.txt 2>&1
mv m5out/stats.txt results/LTAGE/results/bodytrack/

mkdir results/LTAGE/results/canneal
./tu-aca-project/test/task3/run.sh LTAGE scripts/canneal/canneal_1c_simsmall > results/LTAGE/logs/canneal.txt 2>&1
mv m5out/stats.txt results/LTAGE/results/canneal/

mkdir results/LTAGE/results/dedup
./tu-aca-project/test/task3/run.sh LTAGE scripts/dedup/dedup_1c_simsmall > results/LTAGE/logs/dedup.txt 2>&1
mv m5out/stats.txt results/LTAGE/results/dedup/

mkdir results/LTAGE/results/facesim
./tu-aca-project/test/task3/run.sh LTAGE scripts/facesim/facesim_1c_simsmall > results/LTAGE/logs/facesim.txt 2>&1
mv m5out/stats.txt results/LTAGE/results/facesim/

mkdir results/LTAGE/results/ferret
./tu-aca-project/test/task3/run.sh LTAGE scripts/ferret/ferret_1c_simsmall > results/LTAGE/logs/ferret.txt 2>&1
mv m5out/stats.txt results/LTAGE/results/ferret/

mkdir results/LTAGE/results/fluidanimate
./tu-aca-project/test/task3/run.sh LTAGE scripts/fluidanimate/fluidanimate_1c_simsmall > results/LTAGE/logs/fluidanimate.txt 2>&1
mv m5out/stats.txt results/LTAGE/results/fluidanimate/

mkdir results/LTAGE/results/freqmine
./tu-aca-project/test/task3/run.sh LTAGE scripts/freqmine/freqmine_1c_simsmall > results/LTAGE/logs/freqmine.txt 2>&1
mv m5out/stats.txt results/LTAGE/results/freqmine/

mkdir results/LTAGE/results/swaptions
./tu-aca-project/test/task3/run.sh LTAGE scripts/swaptions/swaptions_1c_simsmall > results/LTAGE/logs/swaptions.txt 2>&1
mv m5out/stats.txt results/LTAGE/results/swaptions/

mkdir results/LTAGE/results/vips
./tu-aca-project/test/task3/run.sh LTAGE scripts/vips/vips_1c_simsmall > results/LTAGE/logs/vips.txt 2>&1
mv m5out/stats.txt results/LTAGE/results/vips/

mkdir results/LTAGE/results/x264
./tu-aca-project/test/task3/run.sh LTAGE scripts/x264/x264_1c_simsmall > results/LTAGE/logs/x264.txt 2>&1
mv m5out/stats.txt results/LTAGE/results/x264/

mkdir results/LTAGE/results/rtview
./tu-aca-project/test/task3/run.sh LTAGE scripts/rtview/rtview_1c_simsmall > results/LTAGE/logs/rtview.txt 2>&1
mv m5out/stats.txt results/LTAGE/results/rtview/