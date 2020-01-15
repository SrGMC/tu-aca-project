bps=( AgreeBP PerceptronBP )
benchs=( blackscholes bodytrack canneal dedup ferret fluidanimate freqmine x264 )
runs=( run1 run2 )

echo "AgreeBP"
for run in "${runs[@]}"; do
	pred="$run"
	for bench in "${benchs[@]}"; do
		predicted=$(cat "$run/AgreeBP/results/$bench/stats.txt" | grep "condPredicted" | awk '{print $2}' | tail -n2)
		predsum=0
		for s in $predicted; do
			predsum=$(( predsum + s ))
		done
		incorrect=$(cat "$run/AgreeBP/results/$bench/stats.txt" | grep "condIncorrect" | awk '{print $2}' | tail -n2)
		incsum=0
		for s in $incorrect; do
			incsum=$(( incsum + s ))
		done

		pred="$pred $predsum $incsum formula"
	done
	echo $pred
done