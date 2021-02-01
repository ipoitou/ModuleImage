all : bin/test

bin/test: mainTest.o Pixel.o Image.o
	g++ -g mainTest.o Pixel.o Image.o -o bin/test

mainTest.o: src/mainTest.cpp src/Pixel.h src/Image.h
	g++ -g -Wall -c src/mainTest.cpp

Image.o: src/Image.h src/Image.cpp src/Pixel.h
	g++ -g -Wall -c src/Image.cpp

Pixel.o: src/Pixel.h src/Pixel.cpp
	g++ -g -Wall -c src/Pixel.cpp

clean:
	rm *.o

veryclean: clean
	rm *.out
