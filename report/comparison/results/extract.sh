bps=( AgreeBP BiModeBP LocalBP LTAGE PerceptronBP TournamentBP )
bench=( blackscholes bodytrack canneal dedup ferret fluidanimate freqmine x264 )

for i in "${bps[@]}"; do
	pred="$i"
	for j in "${bench[@]}"; do
		predicted=$(cat "$i/results/$j/stats.txt" | grep "condPredicted" | awk '{print $2}' | tail -n2)
		predsum=0
		for s in $predicted; do
			predsum=$(( predsum + s ))
		done
		incorrect=$(cat "$i/results/$j/stats.txt" | grep "condIncorrect" | awk '{print $2}' | tail -n2)
		incsum=0
		for s in $incorrect; do
			incsum=$(( incsum + s ))
		done
		pred="$pred $predsum $incsum formula"
	done
	echo "$pred"
done