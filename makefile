CC = g++
CUCOMP = nvcc
CFLAGS =

run:
	./test.sh

compile_single: calculo_pi_single_thread.cpp
	$(CC) -o calculo_pi_single_thread calculo_pi_single_thread.cpp -lpthread

run_single: compile_single
	multitime -n 5 ./calculo_pi_single_thread $(ARGS)

compile_thread: calculo_pi_multi_thread.cpp
	$(CC) -o calculo_pi_multi_thread calculo_pi_multi_thread.cpp -lpthread

run_thread: compile_thread
	multitime -n 5 ./calculo_pi_multi_thread $(ARGS)

## CUDA
run_cuda: cuda_thread.o
	$(CUCOMP) $(CFLAGS) cuda_thread.o -o run_cuda

cuda_thread.o: cuda_thread.cu
	$(CUCOMP) $(CFLAGS) -c cuda_thread.cu
