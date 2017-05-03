#Compiler choice
CC = g++

#Executable name
EXE = cipherTest

#included Objects
OBJS = main.o Ceaser.o RailFence.o

all: $(EXE)

$(EXE): $(OBJS)
	$(CC) $(OBJS) -o $(EXE)

#compiling the main object
main.o: main.cpp
	$(CC) -c main.cpp #include/define.h

#compiling the ceaser object
Ceaser.o: Ceaser.cpp
	$(CC) -c Ceaser.cpp #include/Ceaser.h

#compiling the RailFence object
RailFence.o: RailFence.cpp
	$(CC) -c RailFence.cpp #include/RailFence.h

#cleanup for later
clean:
		rm *.o
		rm $(EXE)
