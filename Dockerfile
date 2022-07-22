FROM rust:1.62.1 AS RUNTIME
WORKDIR ./rust
COPY . .
RUN cargo build

FROM ubuntu:22.04 AS OPERATING_SYSTEM
COPY --from=RUNTIME ./rust/target/debug/pahuch ./bin/pahuch
WORKDIR ./bin
CMD pahuch