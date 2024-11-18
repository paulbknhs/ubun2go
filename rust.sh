#!/usr/bin/env bash
curl -sSf https://sh.rustup.rs | sh
. $HOME/.cargo/env
cargo install lsd bat ripgrep
exec $0
