all: build run

build: build_i
	gcc -m32 -o demo_gcc main.o

build_i:
	gcc -m32 -E -o main.i main.o

run:
	./demo_gcc

clean:
	rm -f demo_gcc