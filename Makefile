CC=clang++-3.8
CFLAGS=-I.
DEPS=-lcrypto -lssl -lcpprest -lboost_system 
CPP_OPTS=-std=c++14
NOLINK=-c 
ARTEFACT= -o main.exe
DEBUGFLAG=-g

all: build
	
build: main.cpp 
	$(CC) $(ARTEFACT) $(DEBUGFLAG) main.cpp  $(DEPS) $(CPP_OPTS)

clean:
	rm -f *.o
	rm -f *.exe