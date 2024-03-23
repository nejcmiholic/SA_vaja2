all: build run

build: build_i
	gcc -m32 -o demo_gcc main.o

build_i:
	gcc -m32 -E -o main.i main.o

build_s:
	gcc -m32 -S -o main.s main.i

run:
	./demo_gcc

clean:
	rm -f demo_gcc