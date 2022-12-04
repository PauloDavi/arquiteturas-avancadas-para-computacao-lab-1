// Using CUDA device to calculate pi
#include <stdio.h>
#include <iostream>
#include <iomanip>

#define NUM_BLOCK 512	 // Number of thread blocks
#define NUM_THREAD 512 // Number of threads per block

using namespace std;

// Kernel that executes on the CUDA device
__global__ void cal_pi(double *sum, int n, double step)
{
	// Sequential thread index across the blocks
	int idx = blockIdx.x * blockDim.x + threadIdx.x;
	for (int i = idx; i < n; i += NUM_THREAD * NUM_BLOCK)
	{
		double x = (i + 0.5) * step;
		sum[idx] += 4.0 / (1.0 + x * x);
	}
}

// Main routine that executes on the host
int main(int argc, char *argv[])
{
	if (argc != 2)
	{
		cout << "Usage: " << argv[0] << " <delta x>" << endl;
		return 1;
	}

	double n = atoi(argv[1]);
	double step = 1 / n;
	size_t size = NUM_BLOCK * NUM_THREAD * sizeof(double); // Array memory size
	double *sumDev;
	// Allocate array on device
	cudaMalloc((void **)&sumDev, size);
	// Initialize array in device to 0
	cudaMemset(sumDev, 0, size);
	// Do calculation on device
	cal_pi<<<NUM_BLOCK, NUM_THREAD>>>(sumDev, n, step); // call CUDA kernel

	// Retrieve result from device and store it in host array
	double *sumHost = (double *)malloc(size);
	cudaMemcpy(sumHost, sumDev, size, cudaMemcpyDeviceToHost);

	double pi = 0;
	for (int tid = 0; tid < NUM_THREAD * NUM_BLOCK; tid++)
		pi += sumHost[tid];
	pi *= step;

	// Print results
	cout << "Valor da integral de pi: " << setprecision(15) << pi << endl;

	// Cleanup
	free(sumHost);
	cudaFree(sumDev);

	return 0;
}