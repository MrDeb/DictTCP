CC=gcc
CFLAGS=-Wall -g -O2

all:server client

server:server.o
	$(CC) $< -o $@ -lsqlite3 

client:client.o
	$(CC) $< -o $@ 

%*.o:%*.c
	$(CC) $(CFLAGS) $< -o $@ 

.PHONY:
	clean

clean:
	rm *.o server client

