import wasmtime
import markdown_wasi

print(markdown_wasi.md_to_html("# Hello"))
print(markdown_wasi.html_to_md("<strong>Hello</strong>"))
