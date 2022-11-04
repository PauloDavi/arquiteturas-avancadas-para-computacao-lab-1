DXS="100 1000 10000 100000 1000000 10000000 100000000"
GREEN='\033[1;32m'
BLUE='\033[0;34m'
NC='\033[0m'

clear

echo "${GREEN}Single Thread${NC}"

for DX in ${DXS}; do
  echo "${BLUE}DX = ${DX}${NC}"
  make run_single ARGS=${DX} | grep -E "Time|Valor da integral de pi:" | tail -1;
  echo;
done

echo "\n${GREEN}Multi Thread${NC}"

for THREAD_NUMBER in $(seq 2 8); do
  for DX in ${DXS}; do
    echo "${BLUE}Threads = ${THREAD_NUMBER}\nDX = ${DX}${NC}"
    make run_thread ARGS="${THREAD_NUMBER} ${DX}" | grep -E "Time|Valor da integral de pi:" | tail -1;
    echo;
  done
done
