CC=cc
CFLAGS=-Wall

all: clean mdb.o

mdb.o:
	$(CC) $(CFLAGS) ruby_mdb.c -o ruby_mdb

clean:
	rm -f *.o
