#!/bin/bash
mkdir results/AgreeBP/logs
mkdir results/AgreeBP/results

mkdir results/AgreeBP/results/blackscholes
./run.sh AgreeBP scripts/blackscholes/blackscholes_1c_simsmall > results/AgreeBP/logs/blackscholes.txt
mv m5out/stats.txt m5out/config.json config.ini results/AgreeBP/results/blackscholes/

mkdir results/AgreeBP/results/bodytrack
./run.sh AgreeBP scripts/bodytrack/bodytrack_1c_simsmall > results/AgreeBP/logs/bodytrack.txt
mv m5out/stats.txt m5out/config.json config.ini results/AgreeBP/results/bodytrack/

mkdir results/AgreeBP/results/canneal
./run.sh AgreeBP scripts/canneal/canneal_1c_simsmall > results/AgreeBP/logs/canneal.txt
mv m5out/stats.txt m5out/config.json config.ini results/AgreeBP/results/canneal/

mkdir results/AgreeBP/results/dedup
./run.sh AgreeBP scripts/dedup/dedup_1c_simsmall > results/AgreeBP/logs/dedup.txt
mv m5out/stats.txt m5out/config.json config.ini results/AgreeBP/results/dedup/

mkdir results/AgreeBP/results/facesim
./run.sh AgreeBP scripts/facesim/facesim_1c_simsmall > results/AgreeBP/logs/facesim.txt
mv m5out/stats.txt m5out/config.json config.ini results/AgreeBP/results/facesim/

mkdir results/AgreeBP/results/ferret
./run.sh AgreeBP scripts/ferret/ferret_1c_simsmall > results/AgreeBP/logs/ferret.txt
mv m5out/stats.txt m5out/config.json config.ini results/AgreeBP/results/ferret/

mkdir results/AgreeBP/results/fluidanimate
./run.sh AgreeBP scripts/fluidanimate/fluidanimate_1c_simsmall > results/AgreeBP/logs/fluidanimate.txt
mv m5out/stats.txt m5out/config.json config.ini results/AgreeBP/results/fluidanimate/

mkdir results/AgreeBP/results/freqmine
./run.sh AgreeBP scripts/freqmine/freqmine_1c_simsmall > results/AgreeBP/logs/freqmine.txt
mv m5out/stats.txt m5out/config.json config.ini results/AgreeBP/results/freqmine/

mkdir results/AgreeBP/results/swaptions
./run.sh AgreeBP scripts/swaptions/swaptions_1c_simsmall > results/AgreeBP/logs/swaptions.txt
mv m5out/stats.txt m5out/config.json config.ini results/AgreeBP/results/swaptions/

mkdir results/AgreeBP/results/vips
./run.sh AgreeBP scripts/vips/vips_1c_simsmall > results/AgreeBP/logs/vips.txt
mv m5out/stats.txt m5out/config.json config.ini results/AgreeBP/results/vips/

mkdir results/AgreeBP/results/x264
./run.sh AgreeBP scripts/x264/x264_1c_simsmall > results/AgreeBP/logs/x264.txt
mv m5out/stats.txt m5out/config.json config.ini results/AgreeBP/results/x264/

mkdir results/AgreeBP/results/rtview
./run.sh AgreeBP scripts/rtview/rtview_1c_simsmall > results/AgreeBP/logs/rtview.txt
mv m5out/stats.txt m5out/config.json config.ini results/AgreeBP/results/rtview/