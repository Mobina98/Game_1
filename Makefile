CXX = g++
CXXFLAGS = -std=c++17 -Wall
GTEST_LIBS = -lgtest -lgtest_main -pthread

all: main test

main: main.o
    $(CXX) $(CXXFLAGS) -o main main.o

test: test.o main.o
    $(CXX) $(CXXFLAGS) -o test test.o main.o $(GTEST_LIBS)

main.o: main.cpp
    $(CXX) $(CXXFLAGS) -c main.cpp

test.o: test.cpp
    $(CXX) $(CXXFLAGS) -c test.cpp

clean:
    rm -f *.o main test