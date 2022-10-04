# Surf

Experimental application to surf the internet with the goal of inversion of control.

## Environment

- Ubuntu 20.04
- Clang 10.0.0

## Git Submodules

Get cURL from GitHub:
```shell
git submodule add https://github.com/ayushmxn/curl ./git_modules/curl
```

Build cURL from source:
```shell
cd ./git_modules/curl
autoreconf -fi
./configure --disable-shared --enable-debug --enable-maintainer-mode
make
```

Add cURL to Clang's library search path:
```shell
clang ... -L ./git_modules/curl/include/curl
```