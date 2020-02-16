markdown_rust.wasm: src/lib.rs deps
	WASM_INTERFACE_TYPES=1 wasm-pack build --target nodejs && \
	cp pkg/markdown_rust.wasm .

deps:
	pip3 install -r requirements.txt
.PHONY: deps

python: markdown_rust.wasm
	python3 app.py
.PHONY: python

pkg/markdown_rust.js: src/lib.rs
	wasm-pack build --target nodejs

node: pkg/markdown_rust.js
	node index.js
.PHONY: node

clean:
	rm -rf pkg *.wasm
.PHONY: clean
