#!/usr/bin/env bash

# watch the rust files and continously deploy the service
rustup default nightly
cargo build
skaffold run -p dev
reflex -r "\.rs$" -- bash -c 'cargo build && skaffold run -p dev'