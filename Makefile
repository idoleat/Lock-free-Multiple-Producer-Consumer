CFLAGS = -Wall -O2 -std=c11 -lpthread

all:
	# Please choose one implementation from below:
	# general,lock, lf

clean:
	rm -f tests

test:
	./tests

general:
	cp -v ./general/queues.h ./src/queues.h
	$(CC) $(CFLAGS) -o tests test.c
	./tests

empty:
	cp -v ./template/queues.h ./src/queues.h
	$(CC) $(CFLAGS) -o tests test.c
	./tests
