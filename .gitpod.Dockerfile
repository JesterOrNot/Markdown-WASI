FROM gitpod/workspace-full

RUN bash -cl "cargo install wasm-pack && curl https://wasmtime.dev/install.sh -sSf | bash"

RUN wget "https://github.com/CraneStation/wasi-sdk/releases/download/wasi-sdk-8/wasi-sdk_8.0_amd64.deb" \
    && sudo dpkg -i wasi-sdk_8.0_amd64.deb
