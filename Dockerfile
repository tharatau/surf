# ARG pkg_config_path=/usr/lib/x86_64-linux-gnu/pkgconfig:/usr/lib/pkgconfig:/usr/share/pkgconfig/

FROM rust:1.62.1-slim AS RUNTIME
# ARG pkg_config_path
# ENV PKG_CONFIG_PATH $pkg_config_path
WORKDIR /rust
COPY . .
RUN cargo build

FROM ubuntu:22.04 AS OPERATING_SYSTEM
# ARG pkg_config_path
# ENV PKG_CONFIG_PATH $pkg_config_path
RUN apt update
RUN apt install -y libglib2.0-dev
RUN apt install -y libpango1.0-dev
RUN apt install -y libgdk-pixbuf-2.0-dev
RUN apt install -y libatk1.0-dev
RUN apt install -y gobject-introspection
RUN apt install -y libepoxy-dev
RUN apt install -y libgtk-4-dev
RUN apt install -y cargo
RUN apt install -y pkg-config
RUN apt install -y xauth
RUN apt install -y xorg
RUN apt install -y openbox
WORKDIR ./rust
COPY . .
RUN cargo build
CMD ./target/debug/pahuch