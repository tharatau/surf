#include "surf.h"

int validate(int argc) {

    if (argc == 1) {
        fprintf(stderr, "[ ERROR ] Received 0 arguments but expected 1. The `uri` parameter is missing.\n");
        return 1;
    }

    if (argc > 2) {
        fprintf(stdout, "[ WARN ] Received more than 1 argument but expected 1.\n");
        fprintf(stdout, "[ INFO ] Parsing first argument and ignoring the rest.\n");
    }

    return 0;

}

int main(int argc, char *argv[])
{
    int e = validate(argc);
    if (e != 0) {
        return e;
    }
    return 0;
}