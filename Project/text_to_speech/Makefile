# WRITTEN BY MILO HARTSOE
CXX = g++

CXXFLAGS = -std=c++1z -Wconversion -Wall -Werror -Wextra -pedantic

CXXFLAGS += -O3 -DNDEBUG
# CXXFLAGS += -g3 -DDEBUG

all:
	$(CXX) $(CXXFLAGS) convert.cpp -o convert
	$(CXX) $(CXXFLAGS) convert_and_parse.cpp -o convert_and_parse

editted-cmu-dict.txt: all
	./convert_and_parse < editted-cmu-dict.txt

# build datafile from .ascii file
%.ascii: all
	./convert < $*.ascii

# build raw from .wav
%.wav:
	sox $*.wav -4 -s -c 1 -r 8000 $*.raw

clean:
	rm -vf convert datafile

.PHONY: clean

.SUFFIXES:
