FROM ubuntu:22.04
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