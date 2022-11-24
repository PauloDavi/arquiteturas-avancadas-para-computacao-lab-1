#include <stdio.h>
#include <iostream>
#include <iomanip>
#include <cuda.h>

#include "cuda_runtime.h"
#include "device_launch_parameters.h"

using namespace std;

__device__ double d_pi;

double f(double x)
{
  return 4.0 / (1.0 + x * x);
}

__global__ void add_vectors(double *a, double size) {
  int id = blockDim.x * blockIdx.x + threadIdx.x;
  if (id < size) a[id] = f(a[id]);

	typedef cub::BlockReduce<double, size> BlockReduce;

	__shared__ typename BlockReduce::TempStorage temp_storage;

	d_pi = BlockReduce(temp_storage).Sum(a);	
}

int main(int argc, char *argv[])
{
  if (argc != 2)
  {
    cout << "Usage: " << argv[0] << " <delta x>" << endl;
    return 1;
  }

  double array_size = atof(argv[1]);
  dx = 1.0 / array_size;

  size_t bytes = array_size * sizeof(double);

  double *A = (double *)malloc(bytes);

  double *d_A;
  cudaMalloc(&d_A, bytes);

  for (int i = 0; i < array_size; i++) {
    A[i] = i * dx;
  }

  cudaMemcpy(d_A, A, bytes, cudaMemcpyHostToDevice);
  int thr_per_blk = 256;
  int blk_in_grid = ceil(float(N) / thr_per_blk);

	add_vectors<<<blk_in_grid, thr_per_blk>>>(d_A, array_size);

	free(A);
  cudaFree(d_A);

	typeof(d_pi) pi;
  cudaMemcpyFromSymbol(&pi, "d_pi", sizeof(pi), 0, cudaMemcpyDeviceToHost);
	pi *= dx;
	cout << "Valor da integral de pi: " << setprecision(10) << pi << endl;

  return 0;
}