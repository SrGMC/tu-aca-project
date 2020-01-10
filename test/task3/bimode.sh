#!/bin/bash
mkdir results/BiModeBP/logs
mkdir results/BiModeBP/results

mkdir results/BiModeBP/results/blackscholes
./run.sh BiModeBP scripts/blackscholes/blackscholes_1c_simsmall > results/BiModeBP/logs/blackscholes.txt
mv m5out/stats.txt m5out/config.json config.ini results/BiModeBP/results/blackscholes/

mkdir results/BiModeBP/results/bodytrack
./run.sh BiModeBP scripts/bodytrack/bodytrack_1c_simsmall > results/BiModeBP/logs/bodytrack.txt
mv m5out/stats.txt m5out/config.json config.ini results/BiModeBP/results/bodytrack/

mkdir results/BiModeBP/results/canneal
./run.sh BiModeBP scripts/canneal/canneal_1c_simsmall > results/BiModeBP/logs/canneal.txt
mv m5out/stats.txt m5out/config.json config.ini results/BiModeBP/results/canneal/

mkdir results/BiModeBP/results/dedup
./run.sh BiModeBP scripts/dedup/dedup_1c_simsmall > results/BiModeBP/logs/dedup.txt
mv m5out/stats.txt m5out/config.json config.ini results/BiModeBP/results/dedup/

mkdir results/BiModeBP/results/facesim
./run.sh BiModeBP scripts/facesim/facesim_1c_simsmall > results/BiModeBP/logs/facesim.txt
mv m5out/stats.txt m5out/config.json config.ini results/BiModeBP/results/facesim/

mkdir results/BiModeBP/results/ferret
./run.sh BiModeBP scripts/ferret/ferret_1c_simsmall > results/BiModeBP/logs/ferret.txt
mv m5out/stats.txt m5out/config.json config.ini results/BiModeBP/results/ferret/

mkdir results/BiModeBP/results/fluidanimate
./run.sh BiModeBP scripts/fluidanimate/fluidanimate_1c_simsmall > results/BiModeBP/logs/fluidanimate.txt
mv m5out/stats.txt m5out/config.json config.ini results/BiModeBP/results/fluidanimate/

mkdir results/BiModeBP/results/freqmine
./run.sh BiModeBP scripts/freqmine/freqmine_1c_simsmall > results/BiModeBP/logs/freqmine.txt
mv m5out/stats.txt m5out/config.json config.ini results/BiModeBP/results/freqmine/

mkdir results/BiModeBP/results/swaptions
./run.sh BiModeBP scripts/swaptions/swaptions_1c_simsmall > results/BiModeBP/logs/swaptions.txt
mv m5out/stats.txt m5out/config.json config.ini results/BiModeBP/results/swaptions/

mkdir results/BiModeBP/results/vips
./run.sh BiModeBP scripts/vips/vips_1c_simsmall > results/BiModeBP/logs/vips.txt
mv m5out/stats.txt m5out/config.json config.ini results/BiModeBP/results/vips/

mkdir results/BiModeBP/results/x264
./run.sh BiModeBP scripts/x264/x264_1c_simsmall > results/BiModeBP/logs/x264.txt
mv m5out/stats.txt m5out/config.json config.ini results/BiModeBP/results/x264/

mkdir results/BiModeBP/results/rtview
./run.sh BiModeBP scripts/rtview/rtview_1c_simsmall > results/BiModeBP/logs/rtview.txt
mv m5out/stats.txt m5out/config.json config.ini results/BiModeBP/results/rtview/