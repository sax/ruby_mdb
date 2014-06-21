CC=cc
CFLAGS=-Wall -c

all: clean mdb.o

mdb.o:
	$(CC) $(CFLAGS) ruby_mdb.c -o ruby_mdb.o

clean:
	rm -f *.o
