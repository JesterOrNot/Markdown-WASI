use pulldown_cmark::{html, Parser};
use wasm_bindgen::prelude::wasm_bindgen;

#[wasm_bindgen]
pub fn render(input: &str) -> String {
    let parser = Parser::new(input);
    let mut html_output = String::new();
    html::push_html(&mut html_output, parser);
    return cli_kit::ansi::color_codes::red(html_output.trim().to_string(), true, true);
}

#[wasm_bindgen]
pub fn add(a: i32, b: i32) -> i32 {
    a + b
}

#[wasm_bindgen]
pub fn html_md(input: &str) -> String {
    html2md::parse_html(input).trim().to_string()
}
