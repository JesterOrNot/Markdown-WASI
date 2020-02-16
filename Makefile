markdown_wasi.wasm: src/lib.rs deps
	WASM_INTERFACE_TYPES=1 wasm-pack build --target nodejs && \
	cp pkg/markdown_wasi.wasm .

deps:
	pip3 install -r requirements.txt
.PHONY: deps

python: markdown_wasi.wasm
	python3 app.py
.PHONY: python

pkg/markdown_wasi.js: src/lib.rs
	wasm-pack build --target nodejs

node: pkg/markdown_wasi.js
	node index.js
.PHONY: node

clean:
	rm -rf pkg *.wasm
.PHONY: clean
