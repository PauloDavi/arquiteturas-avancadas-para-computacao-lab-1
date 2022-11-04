DXS="100 1000 10000 100000 1000000 10000000 100000000"

clear

echo "Single Thread"

for DX in ${DXS}; do
  make run_single ARGS=${DX} | grep -E "Time|Valor da integral de pi:" | tail -1;
  echo;
done

echo "Multi Thread"

for THREAD_NUMBER in $(seq 2 8); do
  for DX in ${DXS}; do
    make run_thread ARGS="${THREAD_NUMBER} ${DX}" | grep -E "Time|Valor da integral de pi:" | tail -1;
    echo;
  done
done
