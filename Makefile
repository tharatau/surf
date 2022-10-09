.PHONY: clean install

clean:
	rm -f surf *.o

install:
	chmod 755 ./deps.sh
	bash ./deps.sh

surf: surf.c
	clang surf.c -o surf