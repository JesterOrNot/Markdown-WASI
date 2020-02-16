import wasmtime
import markdown

print(markdown.md_to_html("# Hello"))
print(markdown.html_to_md("<strong>Hello</strong>"))
