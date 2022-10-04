.PHONY: clean deps
clean:
	rm surf

deps:
	sudo apt install curl

surf: surf.c
	clang surf.c -o surf -lcurl
