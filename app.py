import wasmtime
import markdown_rust

print(markdown_rust.md_to_html("# Hello"))
print(markdown_rust.html_to_md("<strong>Hello</strong>"))
