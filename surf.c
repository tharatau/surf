#include "surf.h"

int validate(int argc, char *argv[]) {

    regex_t re;
    int value;

    char scheme_re[] = "[:http|https|ftp|mailto|file|data|irc:]";

    if (argc == 1) {
        fprintf(stderr, "[ ERROR ] Received 0 arguments but expected 1. The `uri` parameter is missing.\n");
        return 1;
    }

    if (argc > 2) {
        fprintf(stdout, "[ WARN ] Received more than 1 argument but expected 1.\n");
        fprintf(stdout, "[ INFO ] Validating first argument only.\n");
    }

    value = regcomp(&re, scheme_re, 0);
    value = regexec(&re, argv[1], 0, NULL, 0);

    printf("%d", value);

    regfree(&re);

    return 0;

}

int main(int argc, char *argv[])
{
    int e = validate(argc, argv);
    if (e != 0) {
        return e;
    }
    return 0;
}