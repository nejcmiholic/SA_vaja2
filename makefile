all: build run

build: main.c buffer.c
	gcc -m32 -o data_gcc main.c buffer.c

run:
	./data_gcc

clean:
	rm -f data_gcc