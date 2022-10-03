.PHONY: clean
clean:
	rm surf

surf: surf.c
	clang surf.c -o surf
