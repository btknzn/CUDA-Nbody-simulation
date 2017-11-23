all: nbody nbody_cuda

nbody: nbody.c
	gcc -std=c99 -O3 -g -o nbody nbody.c -lm

nbody_cuda: nbody_cuda.cu
	nvcc -O3 -arch=sm_20 -o nbody_cuda nbody_cuda.cu -lm -lpthread -lcuda -lcudart
	
clean:
	-rm -f nbody nbody_cuda
