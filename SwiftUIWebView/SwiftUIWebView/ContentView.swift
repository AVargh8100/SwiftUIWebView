//
//  ContentView.swift
//  SwiftUIWebView
//
//  Created by Alex Varghese on 18/06/2024.
//

import SwiftUI
import WebKit

struct ContentView: View {
    var body: some View {
        VStack {
            WebView(url: URL(string: "https://apple.com"))
//            WebView(url: URL(string: "https://google.com"))
        }
    }
}

#Preview {
    ContentView()
}

struct WebView: UIViewRepresentable {
    let url: URL?
    func makeUIView(context: Context) -> WKWebView {
        WKWebView()
    }
    
    func updateUIView(_ webView: WKWebView, context: Context) {
        guard let url = url else { return }
        let request = URLRequest(url: url)
        webView.load(request)
    }
}
