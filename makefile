CC = g++
CFLAGS = -g -std=c++11

a.out: date.o date.h friend.o friend.h fbfriends.o fbfriends.h main.o
	$(CC) $(CFLAGS) date.o friend.o fbfriends.o main.o -o a.out

date.o: date.cc date.h
	$(CC) -c $(CFLAGS) date.cc -o date.o

fbfriends.o: fbfriends.cc fbfriends.h
	$(CC) -c $(CFLAGS) fbfriends.cc -o fbfriends.o

friend.o: friend.cc friend.h
	$(CC) -c $(CFLAGS) friend.cc -o friend.o

main.o: main.cc date.h
	$(CC) -c $(CFLAGS) main.cc -o main.o

clean:
 	rm -f main.o friend.o fbfriends.o date.o main