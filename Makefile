all:  deposit

deposit: mkDir main.o deposit.o
	gcc -Wall -Werror build/main.o build/deposit.o -o bin/deposit
mkDir:
	mkdir -p bin
	mkdir -p build
main.o : src/main.c
	gcc -Wall -Werror -c src/main.c -o build/main.o
deposit.o : src/deposit.c
	gcc -Wall -Werror -c src/deposit.c -o build/deposit.o
.PHONY:  clean
clean:
	rm -rf bin/*
	rm -rf build/* 
rmDir:
	rm -r bin
	rm -r build
