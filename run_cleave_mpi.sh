#!/bin/bash
PW=/home/brooke/qe/q-e-qe-7.5/bin/pw.x
MPIRUN=/home/brooke/mpich-ch3/bin/mpirun
NP=12
NJOBS_PARALLEL=2
mkdir -p outputs/cleave

inputs=(inputs/cleave/cleave_*.in)
total=${#inputs[@]}
pids=()

for idx in "${!inputs[@]}"; do
    f="${inputs[$idx]}"
    base=$(basename $f .in)
    out="outputs/cleave/${base}.out"
    num=$((idx+1))

    mkdir -p tmp/cleave_${idx}

    if [ -f "$out" ] && grep -q "JOB DONE" "$out"; then
        echo "  [${num}/${total}] ${base} ... already done"
        continue
    fi

    echo "  [${num}/${total}] ${base} ... starting (np=$NP)"
    $MPIRUN -np $NP $PW < $f > $out 2>&1 &
    pids+=($!)

    if [ ${#pids[@]} -ge $NJOBS_PARALLEL ]; then
        wait ${pids[0]}
        pids=("${pids[@]:1}")
    fi
done

for pid in "${pids[@]}"; do
    wait $pid
done

echo "WSe2 cleavage scan complete"
