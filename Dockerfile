FROM rust:1.73-slim-bullseye

WORKDIR /build

COPY Cargo.toml Cargo.lock ./

RUN mkdir src && echo "fn main() {println!(\"if you see this, the build broke\")}" > src/main.rs
RUN cargo build --release
RUN rm -r src

COPY . .

RUN cargo build --release

EXPOSE 8080

CMD "./target/release/app"
