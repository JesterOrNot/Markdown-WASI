use pulldown_cmark::{html, Parser};
use wasm_bindgen::prelude::wasm_bindgen;

#[wasm_bindgen]
pub fn render(input: &str) -> String {
    let parser = Parser::new(input);
    let mut html_output = String::new();
    html::push_html(&mut html_output, parser);
    return html_output.trim().to_string();
}

#[wasm_bindgen]
pub fn add(a: i32, b: i32) -> i32 {
    a + b
}
