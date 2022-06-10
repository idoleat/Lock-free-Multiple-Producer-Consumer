CFLAGS = -Wall -O2 -std=c11 -lpthread -g

mkdir_build:
	mkdir -p ./build

all: mkdir_build
	# Please choose one implementation from below:
	# general, lock, lf, template

clean:
	rm -f tests
	rm -rf ./build

test:
	./tests

general: mkdir_build
	cp -v ./general/queues.h ./build/queues.h
	$(CC) $(CFLAGS) -o tests test.c
	./tests

lock: mkdir_build
	cp -v ./lock/queues.h ./build/queues.h
	$(CC) $(CFLAGS) -o tests test.c
	./tests

template: mkdir_build
	cp -v ./template/queues.h ./build/queues.h
	$(CC) $(CFLAGS) -o tests test.c
	./tests
