FROM gitpod/workspace-full

RUN bash -cl "cargo install wasm-pack && curl https://wasmtime.dev/install.sh -sSf | bash"