CC = g++
CUCOMP = nvcc
CUFLAGS = -arch=native

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
compile_cuda: cuda_thread.cu
	$(CUCOMP) $(CUFLAGS) cuda_thread.cu -o cuda_thread

run_cuda: compile_cuda
	multitime -n 5 ./cuda_thread $(ARGS)
