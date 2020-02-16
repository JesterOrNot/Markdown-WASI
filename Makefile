markdown.wasm: src/lib.rs deps
	WASM_INTERFACE_TYPES=1 wasm-pack build && \
	cp pkg/markdown.wasm .

deps:
	pip3 install -r requirements.txt
.PHONY: deps

python: markdown.wasm
	python3 app.py
.PHONY: python
