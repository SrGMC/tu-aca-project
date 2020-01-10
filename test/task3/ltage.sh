#!/bin/bash
mkdir results/LTAGE/logs
mkdir results/LTAGE/results

mkdir results/LTAGE/results/blackscholes
./run.sh LTAGE scripts/blackscholes/blackscholes_1c_simsmall > results/LTAGE/logs/blackscholes.txt
mv m5out/stats.txt m5out/config.json config.ini results/LTAGE/results/blackscholes/

mkdir results/LTAGE/results/bodytrack
./run.sh LTAGE scripts/bodytrack/bodytrack_1c_simsmall > results/LTAGE/logs/bodytrack.txt
mv m5out/stats.txt m5out/config.json config.ini results/LTAGE/results/bodytrack/

mkdir results/LTAGE/results/canneal
./run.sh LTAGE scripts/canneal/canneal_1c_simsmall > results/LTAGE/logs/canneal.txt
mv m5out/stats.txt m5out/config.json config.ini results/LTAGE/results/canneal/

mkdir results/LTAGE/results/dedup
./run.sh LTAGE scripts/dedup/dedup_1c_simsmall > results/LTAGE/logs/dedup.txt
mv m5out/stats.txt m5out/config.json config.ini results/LTAGE/results/dedup/

mkdir results/LTAGE/results/facesim
./run.sh LTAGE scripts/facesim/facesim_1c_simsmall > results/LTAGE/logs/facesim.txt
mv m5out/stats.txt m5out/config.json config.ini results/LTAGE/results/facesim/

mkdir results/LTAGE/results/ferret
./run.sh LTAGE scripts/ferret/ferret_1c_simsmall > results/LTAGE/logs/ferret.txt
mv m5out/stats.txt m5out/config.json config.ini results/LTAGE/results/ferret/

mkdir results/LTAGE/results/fluidanimate
./run.sh LTAGE scripts/fluidanimate/fluidanimate_1c_simsmall > results/LTAGE/logs/fluidanimate.txt
mv m5out/stats.txt m5out/config.json config.ini results/LTAGE/results/fluidanimate/

mkdir results/LTAGE/results/freqmine
./run.sh LTAGE scripts/freqmine/freqmine_1c_simsmall > results/LTAGE/logs/freqmine.txt
mv m5out/stats.txt m5out/config.json config.ini results/LTAGE/results/freqmine/

mkdir results/LTAGE/results/swaptions
./run.sh LTAGE scripts/swaptions/swaptions_1c_simsmall > results/LTAGE/logs/swaptions.txt
mv m5out/stats.txt m5out/config.json config.ini results/LTAGE/results/swaptions/

mkdir results/LTAGE/results/vips
./run.sh LTAGE scripts/vips/vips_1c_simsmall > results/LTAGE/logs/vips.txt
mv m5out/stats.txt m5out/config.json config.ini results/LTAGE/results/vips/

mkdir results/LTAGE/results/x264
./run.sh LTAGE scripts/x264/x264_1c_simsmall > results/LTAGE/logs/x264.txt
mv m5out/stats.txt m5out/config.json config.ini results/LTAGE/results/x264/

mkdir results/LTAGE/results/rtview
./run.sh LTAGE scripts/rtview/rtview_1c_simsmall > results/LTAGE/logs/rtview.txt
mv m5out/stats.txt m5out/config.json config.ini results/LTAGE/results/rtview/