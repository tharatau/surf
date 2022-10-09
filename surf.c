#include "surf.h"

int main(int argc, char *argv[])
{
    if (argc == 1) {
        fprintf(stderr, "Error: Received 0 arguments but expected 1. The `uri` parameter is missing.\n");
        exit(1);
    }
}