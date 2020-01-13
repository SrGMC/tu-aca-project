#!/bin/bash
function help(){
    echo "$0 [branch predictor] <script name>"
    exit
}

if [[ $# -ne 2 ]]; then
    echo "Running with TournamentBP"
    BP="TournamentBP"
    SCRIPT=$1
else
    echo "Running with $1"
    BP=$1
    SCRIPT=$2
fi

rm m5out/*
echo "Started: $(date)"
start=$SECONDS
#./build/ALPHA/gem5.opt -vvv --debug-start 0 --debug-flags=Branch,Fetch --debug-file=debug.txt configs/example/fs.py -n 1 --cpu-type=MinorCPU --caches --kernel=vmlinux --script="./benchmarks/${SCRIPT}.rcS" --bp-type="$BP"
./build/ALPHA/gem5.opt configs/example/fs.py -n 1 --cpu-type=MinorCPU --caches --kernel=vmlinux --script="./benchmarks/${SCRIPT}.rcS" --bp-type="$BP" -r 1 --restore-with-cpu=MinorCPU
echo "Finished: $(date)"
end=$SECONDS
duration=$(( end - start ))
echo "Took ${duration}s to complete"
