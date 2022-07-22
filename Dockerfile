FROM rust:1.62.1 AS RUNTIME
WORKDIR ./rust
COPY . .
RUN export PKG_CONFIG_PATH=./
RUN cargo build

FROM ubuntu:22.04 AS OPERATING_SYSTEM
RUN apt update
RUN apt install -y libglib2.0-dev
RUN apt install -y libpango1.0-dev
RUN apt install -y libgdk-pixbuf-2.0-dev
RUN apt install -y libatk1.0-dev
RUN apt install -y gobject-introspection
RUN apt install -y libepoxy-dev
RUN apt install -y libgtk-4-dev
COPY --from=RUNTIME ./rust/target/debug/pahuch ./bin/pahuch
WORKDIR ./bin
CMD pahuch