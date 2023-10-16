# devOpsTP2
# README

## Description

This repository contains a Dockerfile that builds a Rust application and packages it into a Debian-based container. The application is built using the `rust:1.73-slim-bullseye` image as the build environment and then copied to a smaller `debian:stable-slim` image for a more lightweight production environment.

## Prerequisites

Make sure you have Docker installed on your system before proceeding.

## Building the Docker Image

To build the Docker image, run the following command in the terminal:

```bash
docker build -t my-rust-app .
