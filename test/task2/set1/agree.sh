#!/bin/bash
mkdir results/AgreeBP/logs
mkdir results/AgreeBP/results

mkdir results/AgreeBP/results/blackscholes
./tu-aca-project/test/task3/run.sh AgreeBP scripts/blackscholes/blackscholes_1c_simsmall > results/AgreeBP/logs/blackscholes.txt
mv m5out/stats.txt m5out/config.json config.ini results/AgreeBP/results/blackscholes/

mkdir results/AgreeBP/results/bodytrack
./tu-aca-project/test/task3/run.sh AgreeBP scripts/bodytrack/bodytrack_1c_simsmall > results/AgreeBP/logs/bodytrack.txt
mv m5out/stats.txt m5out/config.json config.ini results/AgreeBP/results/bodytrack/

mkdir results/AgreeBP/results/canneal
./tu-aca-project/test/task3/run.sh AgreeBP scripts/canneal/canneal_1c_simsmall > results/AgreeBP/logs/canneal.txt
mv m5out/stats.txt m5out/config.json config.ini results/AgreeBP/results/canneal/

mkdir results/AgreeBP/results/dedup
./tu-aca-project/test/task3/run.sh AgreeBP scripts/dedup/dedup_1c_simsmall > results/AgreeBP/logs/dedup.txt
mv m5out/stats.txt m5out/config.json config.ini results/AgreeBP/results/dedup/

mkdir results/AgreeBP/results/facesim
./tu-aca-project/test/task3/run.sh AgreeBP scripts/facesim/facesim_1c_simsmall > results/AgreeBP/logs/facesim.txt
mv m5out/stats.txt m5out/config.json config.ini results/AgreeBP/results/facesim/

mkdir results/AgreeBP/results/ferret
./tu-aca-project/test/task3/run.sh AgreeBP scripts/ferret/ferret_1c_simsmall > results/AgreeBP/logs/ferret.txt
mv m5out/stats.txt m5out/config.json config.ini results/AgreeBP/results/ferret/

mkdir results/AgreeBP/results/fluidanimate
./tu-aca-project/test/task3/run.sh AgreeBP scripts/fluidanimate/fluidanimate_1c_simsmall > results/AgreeBP/logs/fluidanimate.txt
mv m5out/stats.txt m5out/config.json config.ini results/AgreeBP/results/fluidanimate/

mkdir results/AgreeBP/results/freqmine
./tu-aca-project/test/task3/run.sh AgreeBP scripts/freqmine/freqmine_1c_simsmall > results/AgreeBP/logs/freqmine.txt
mv m5out/stats.txt m5out/config.json config.ini results/AgreeBP/results/freqmine/

mkdir results/AgreeBP/results/swaptions
./tu-aca-project/test/task3/run.sh AgreeBP scripts/swaptions/swaptions_1c_simsmall > results/AgreeBP/logs/swaptions.txt
mv m5out/stats.txt m5out/config.json config.ini results/AgreeBP/results/swaptions/

mkdir results/AgreeBP/results/vips
./tu-aca-project/test/task3/run.sh AgreeBP scripts/vips/vips_1c_simsmall > results/AgreeBP/logs/vips.txt
mv m5out/stats.txt m5out/config.json config.ini results/AgreeBP/results/vips/

mkdir results/AgreeBP/results/x264
./tu-aca-project/test/task3/run.sh AgreeBP scripts/x264/x264_1c_simsmall > results/AgreeBP/logs/x264.txt
mv m5out/stats.txt m5out/config.json config.ini results/AgreeBP/results/x264/

mkdir results/AgreeBP/results/rtview
./tu-aca-project/test/task3/run.sh AgreeBP scripts/rtview/rtview_1c_simsmall > results/AgreeBP/logs/rtview.txt
mv m5out/stats.txt m5out/config.json config.ini results/AgreeBP/results/rtview/