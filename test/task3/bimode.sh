#!/bin/bash
mkdir results/BiModeBP/logs
mkdir results/BiModeBP/results

mkdir results/BiModeBP/results/blackscholes
./tu-aca-project/test/task3/run.sh BiModeBP scripts/blackscholes/blackscholes_1c_simdev > results/BiModeBP/logs/blackscholes.txt 2>&1
mv m5out/stats.txt results/BiModeBP/results/blackscholes/

mkdir results/BiModeBP/results/bodytrack
./tu-aca-project/test/task3/run.sh BiModeBP scripts/bodytrack/bodytrack_1c_simdev > results/BiModeBP/logs/bodytrack.txt 2>&1
mv m5out/stats.txt results/BiModeBP/results/bodytrack/

mkdir results/BiModeBP/results/canneal
./tu-aca-project/test/task3/run.sh BiModeBP scripts/canneal/canneal_1c_simdev > results/BiModeBP/logs/canneal.txt 2>&1
mv m5out/stats.txt results/BiModeBP/results/canneal/

mkdir results/BiModeBP/results/dedup
./tu-aca-project/test/task3/run.sh BiModeBP scripts/dedup/dedup_1c_simdev > results/BiModeBP/logs/dedup.txt 2>&1
mv m5out/stats.txt results/BiModeBP/results/dedup/

mkdir results/BiModeBP/results/facesim
./tu-aca-project/test/task3/run.sh BiModeBP scripts/facesim/facesim_1c_simdev > results/BiModeBP/logs/facesim.txt 2>&1
mv m5out/stats.txt results/BiModeBP/results/facesim/

mkdir results/BiModeBP/results/ferret
./tu-aca-project/test/task3/run.sh BiModeBP scripts/ferret/ferret_1c_simdev > results/BiModeBP/logs/ferret.txt 2>&1
mv m5out/stats.txt results/BiModeBP/results/ferret/

mkdir results/BiModeBP/results/fluidanimate
./tu-aca-project/test/task3/run.sh BiModeBP scripts/fluidanimate/fluidanimate_1c_simdev > results/BiModeBP/logs/fluidanimate.txt 2>&1
mv m5out/stats.txt results/BiModeBP/results/fluidanimate/

mkdir results/BiModeBP/results/freqmine
./tu-aca-project/test/task3/run.sh BiModeBP scripts/freqmine/freqmine_1c_simdev > results/BiModeBP/logs/freqmine.txt 2>&1
mv m5out/stats.txt results/BiModeBP/results/freqmine/

mkdir results/BiModeBP/results/swaptions
./tu-aca-project/test/task3/run.sh BiModeBP scripts/swaptions/swaptions_1c_simdev > results/BiModeBP/logs/swaptions.txt 2>&1
mv m5out/stats.txt results/BiModeBP/results/swaptions/

mkdir results/BiModeBP/results/vips
./tu-aca-project/test/task3/run.sh BiModeBP scripts/vips/vips_1c_simdev > results/BiModeBP/logs/vips.txt 2>&1
mv m5out/stats.txt results/BiModeBP/results/vips/

mkdir results/BiModeBP/results/x264
./tu-aca-project/test/task3/run.sh BiModeBP scripts/x264/x264_1c_simdev > results/BiModeBP/logs/x264.txt 2>&1
mv m5out/stats.txt results/BiModeBP/results/x264/

mkdir results/BiModeBP/results/rtview
./tu-aca-project/test/task3/run.sh BiModeBP scripts/rtview/rtview_1c_simdev > results/BiModeBP/logs/rtview.txt 2>&1
mv m5out/stats.txt results/BiModeBP/results/rtview/