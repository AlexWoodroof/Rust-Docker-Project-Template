# Use the official Rust image as a builder
FROM rust:latest as builder

# Install musl-tools to support static linking
RUN apt-get update && apt-get install -y musl-tools

# Add the musl target
RUN rustup target add x86_64-unknown-linux-musl

# Set the working directory
WORKDIR /usr/src/rust_app_name

# Copy the source code into the container
COPY . .

# Build the application with static linking
RUN cargo build --release --target x86_64-unknown-linux-musl

# Use a lightweight base image for the final image
FROM alpine:latest

# Install required libraries
RUN apk add --no-cache libgcc

# Copy the built binary from the builder stage
COPY --from=builder /usr/src/rust_app_name/target/x86_64-unknown-linux-musl/release/rust_app_name .

# Command to run the application
CMD ["./rust_app_name"]
