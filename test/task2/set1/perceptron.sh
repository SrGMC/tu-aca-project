#!/bin/bash
mkdir results/PerceptronBP/logs
mkdir results/PerceptronBP/results

mkdir results/PerceptronBP/results/blackscholes
./tu-aca-project/test/task3/run.sh PerceptronBP scripts/blackscholes/blackscholes_1c_simsmall > results/PerceptronBP/logs/blackscholes.txt
mv m5out/stats.txt m5out/config.json config.ini results/PerceptronBP/results/blackscholes/

mkdir results/PerceptronBP/results/bodytrack
./tu-aca-project/test/task3/run.sh PerceptronBP scripts/bodytrack/bodytrack_1c_simsmall > results/PerceptronBP/logs/bodytrack.txt
mv m5out/stats.txt m5out/config.json config.ini results/PerceptronBP/results/bodytrack/

mkdir results/PerceptronBP/results/canneal
./tu-aca-project/test/task3/run.sh PerceptronBP scripts/canneal/canneal_1c_simsmall > results/PerceptronBP/logs/canneal.txt
mv m5out/stats.txt m5out/config.json config.ini results/PerceptronBP/results/canneal/

mkdir results/PerceptronBP/results/dedup
./tu-aca-project/test/task3/run.sh PerceptronBP scripts/dedup/dedup_1c_simsmall > results/PerceptronBP/logs/dedup.txt
mv m5out/stats.txt m5out/config.json config.ini results/PerceptronBP/results/dedup/

mkdir results/PerceptronBP/results/facesim
./tu-aca-project/test/task3/run.sh PerceptronBP scripts/facesim/facesim_1c_simsmall > results/PerceptronBP/logs/facesim.txt
mv m5out/stats.txt m5out/config.json config.ini results/PerceptronBP/results/facesim/

mkdir results/PerceptronBP/results/ferret
./tu-aca-project/test/task3/run.sh PerceptronBP scripts/ferret/ferret_1c_simsmall > results/PerceptronBP/logs/ferret.txt
mv m5out/stats.txt m5out/config.json config.ini results/PerceptronBP/results/ferret/

mkdir results/PerceptronBP/results/fluidanimate
./tu-aca-project/test/task3/run.sh PerceptronBP scripts/fluidanimate/fluidanimate_1c_simsmall > results/PerceptronBP/logs/fluidanimate.txt
mv m5out/stats.txt m5out/config.json config.ini results/PerceptronBP/results/fluidanimate/

mkdir results/PerceptronBP/results/freqmine
./tu-aca-project/test/task3/run.sh PerceptronBP scripts/freqmine/freqmine_1c_simsmall > results/PerceptronBP/logs/freqmine.txt
mv m5out/stats.txt m5out/config.json config.ini results/PerceptronBP/results/freqmine/

mkdir results/PerceptronBP/results/swaptions
./tu-aca-project/test/task3/run.sh PerceptronBP scripts/swaptions/swaptions_1c_simsmall > results/PerceptronBP/logs/swaptions.txt
mv m5out/stats.txt m5out/config.json config.ini results/PerceptronBP/results/swaptions/

mkdir results/PerceptronBP/results/vips
./tu-aca-project/test/task3/run.sh PerceptronBP scripts/vips/vips_1c_simsmall > results/PerceptronBP/logs/vips.txt
mv m5out/stats.txt m5out/config.json config.ini results/PerceptronBP/results/vips/

mkdir results/PerceptronBP/results/x264
./tu-aca-project/test/task3/run.sh PerceptronBP scripts/x264/x264_1c_simsmall > results/PerceptronBP/logs/x264.txt
mv m5out/stats.txt m5out/config.json config.ini results/PerceptronBP/results/x264/

mkdir results/PerceptronBP/results/rtview
./tu-aca-project/test/task3/run.sh PerceptronBP scripts/rtview/rtview_1c_simsmall > results/PerceptronBP/logs/rtview.txt
mv m5out/stats.txt m5out/config.json config.ini results/PerceptronBP/results/rtview/