use pulldown_cmark::{html, Parser};
use wasm_bindgen::prelude::wasm_bindgen;

#[wasm_bindgen]
pub fn md_to_html(input: &str) -> String {
    let parser = Parser::new(input);
    let mut html_output = String::new();
    html::push_html(&mut html_output, parser);
    return html_output.trim().to_string();
}

#[wasm_bindgen]
pub fn html_to_md(input: &str) -> String {
    html2md::parse_html(input).trim().to_string()
}
