.PHONY: all setup

all: service_http.o surf.o
	clang service_http.o surf.o -o surf -lcurl

setup:
	rm -f surf *.o
	chmod 755 ./deps.sh
	bash ./deps.sh

service_http: service_http.c
	clang service_http.c -c

surf: surf.c
	clang surf.c -c