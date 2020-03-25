update vimrc

suport Rust wiht vim-racer plugin:

- installation

1. rustup toolchain add nightly

2. cargo +nightly install racer

- configuration

1. rustup component add rust-src

2. see detail in vimrc 'racer' section

NOTE: code completion using <Ctrl>n the same as python jedi set
