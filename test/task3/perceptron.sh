#!/bin/bash
mkdir results/PerceptronBP/logs
mkdir results/PerceptronBP/results

mkdir results/PerceptronBP/results/blackscholes
./run.sh PerceptronBP scripts/blackscholes/blackscholes_1c_simsmall > results/PerceptronBP/logs/blackscholes.txt
mv m5out/stats.txt m5out/config.json config.ini results/PerceptronBP/results/blackscholes/

mkdir results/PerceptronBP/results/bodytrack
./run.sh PerceptronBP scripts/bodytrack/bodytrack_1c_simsmall > results/PerceptronBP/logs/bodytrack.txt
mv m5out/stats.txt m5out/config.json config.ini results/PerceptronBP/results/bodytrack/

mkdir results/PerceptronBP/results/canneal
./run.sh PerceptronBP scripts/canneal/canneal_1c_simsmall > results/PerceptronBP/logs/canneal.txt
mv m5out/stats.txt m5out/config.json config.ini results/PerceptronBP/results/canneal/

mkdir results/PerceptronBP/results/dedup
./run.sh PerceptronBP scripts/dedup/dedup_1c_simsmall > results/PerceptronBP/logs/dedup.txt
mv m5out/stats.txt m5out/config.json config.ini results/PerceptronBP/results/dedup/

mkdir results/PerceptronBP/results/facesim
./run.sh PerceptronBP scripts/facesim/facesim_1c_simsmall > results/PerceptronBP/logs/facesim.txt
mv m5out/stats.txt m5out/config.json config.ini results/PerceptronBP/results/facesim/

mkdir results/PerceptronBP/results/ferret
./run.sh PerceptronBP scripts/ferret/ferret_1c_simsmall > results/PerceptronBP/logs/ferret.txt
mv m5out/stats.txt m5out/config.json config.ini results/PerceptronBP/results/ferret/

mkdir results/PerceptronBP/results/fluidanimate
./run.sh PerceptronBP scripts/fluidanimate/fluidanimate_1c_simsmall > results/PerceptronBP/logs/fluidanimate.txt
mv m5out/stats.txt m5out/config.json config.ini results/PerceptronBP/results/fluidanimate/

mkdir results/PerceptronBP/results/freqmine
./run.sh PerceptronBP scripts/freqmine/freqmine_1c_simsmall > results/PerceptronBP/logs/freqmine.txt
mv m5out/stats.txt m5out/config.json config.ini results/PerceptronBP/results/freqmine/

mkdir results/PerceptronBP/results/swaptions
./run.sh PerceptronBP scripts/swaptions/swaptions_1c_simsmall > results/PerceptronBP/logs/swaptions.txt
mv m5out/stats.txt m5out/config.json config.ini results/PerceptronBP/results/swaptions/

mkdir results/PerceptronBP/results/vips
./run.sh PerceptronBP scripts/vips/vips_1c_simsmall > results/PerceptronBP/logs/vips.txt
mv m5out/stats.txt m5out/config.json config.ini results/PerceptronBP/results/vips/

mkdir results/PerceptronBP/results/x264
./run.sh PerceptronBP scripts/x264/x264_1c_simsmall > results/PerceptronBP/logs/x264.txt
mv m5out/stats.txt m5out/config.json config.ini results/PerceptronBP/results/x264/

mkdir results/PerceptronBP/results/rtview
./run.sh PerceptronBP scripts/rtview/rtview_1c_simsmall > results/PerceptronBP/logs/rtview.txt
mv m5out/stats.txt m5out/config.json config.ini results/PerceptronBP/results/rtview/