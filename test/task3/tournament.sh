#!/bin/bash
mkdir results/TournamentBP/logs
mkdir results/TournamentBP/results

mkdir results/TournamentBP/results/blackscholes
./tu-aca-project/test/task3/run.sh TournamentBP scripts/blackscholes/blackscholes_1c_simdev > results/TournamentBP/logs/blackscholes.txt 2>&1
mv m5out/stats.txt results/TournamentBP/results/blackscholes/

mkdir results/TournamentBP/results/bodytrack
./tu-aca-project/test/task3/run.sh TournamentBP scripts/bodytrack/bodytrack_1c_simdev > results/TournamentBP/logs/bodytrack.txt 2>&1
mv m5out/stats.txt results/TournamentBP/results/bodytrack/

mkdir results/TournamentBP/results/canneal
./tu-aca-project/test/task3/run.sh TournamentBP scripts/canneal/canneal_1c_simdev > results/TournamentBP/logs/canneal.txt 2>&1
mv m5out/stats.txt results/TournamentBP/results/canneal/

mkdir results/TournamentBP/results/dedup
./tu-aca-project/test/task3/run.sh TournamentBP scripts/dedup/dedup_1c_simdev > results/TournamentBP/logs/dedup.txt 2>&1
mv m5out/stats.txt results/TournamentBP/results/dedup/

mkdir results/TournamentBP/results/facesim
./tu-aca-project/test/task3/run.sh TournamentBP scripts/facesim/facesim_1c_simdev > results/TournamentBP/logs/facesim.txt 2>&1
mv m5out/stats.txt results/TournamentBP/results/facesim/

mkdir results/TournamentBP/results/ferret
./tu-aca-project/test/task3/run.sh TournamentBP scripts/ferret/ferret_1c_simdev > results/TournamentBP/logs/ferret.txt 2>&1
mv m5out/stats.txt results/TournamentBP/results/ferret/

mkdir results/TournamentBP/results/fluidanimate
./tu-aca-project/test/task3/run.sh TournamentBP scripts/fluidanimate/fluidanimate_1c_simdev > results/TournamentBP/logs/fluidanimate.txt 2>&1
mv m5out/stats.txt results/TournamentBP/results/fluidanimate/

mkdir results/TournamentBP/results/freqmine
./tu-aca-project/test/task3/run.sh TournamentBP scripts/freqmine/freqmine_1c_simdev > results/TournamentBP/logs/freqmine.txt 2>&1
mv m5out/stats.txt results/TournamentBP/results/freqmine/

mkdir results/TournamentBP/results/swaptions
./tu-aca-project/test/task3/run.sh TournamentBP scripts/swaptions/swaptions_1c_simdev > results/TournamentBP/logs/swaptions.txt 2>&1
mv m5out/stats.txt results/TournamentBP/results/swaptions/

mkdir results/TournamentBP/results/vips
./tu-aca-project/test/task3/run.sh TournamentBP scripts/vips/vips_1c_simdev > results/TournamentBP/logs/vips.txt 2>&1
mv m5out/stats.txt results/TournamentBP/results/vips/

mkdir results/TournamentBP/results/x264
./tu-aca-project/test/task3/run.sh TournamentBP scripts/x264/x264_1c_simdev > results/TournamentBP/logs/x264.txt 2>&1
mv m5out/stats.txt results/TournamentBP/results/x264/

mkdir results/TournamentBP/results/rtview
./tu-aca-project/test/task3/run.sh TournamentBP scripts/rtview/rtview_1c_simdev > results/TournamentBP/logs/rtview.txt 2>&1
mv m5out/stats.txt results/TournamentBP/results/rtview/