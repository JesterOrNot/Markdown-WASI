markdown.wasm: src/lib.rs
	WASM_INTERFACE_TYPES=1 wasm-pack build && \
	cp pkg/markdown.wasm .
python: markdown.wasm
	python3 app.py
.PHONY: python
