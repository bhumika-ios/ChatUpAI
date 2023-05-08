//
//  WebView.swift
//  ChatUpAI
//
//  Created by Bhumika Patel on 08/05/23.
//

import Combine
import SwiftUI
import WebKit

public struct WebView: View, UIViewRepresentable{
    
    //WKwebview to display
    
    public let webView: WKWebView
    
    public init(webView: WKWebView) {
        self.webView = webView
    }
    
    public func makeUIView(context: UIViewRepresentableContext<WebView>) -> WKWebView {
        webView.configuration.websiteDataStore = WKWebsiteDataStore.default()
        return webView
    }
    
    public func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<WebView>) {}
    
    public func makeCoordinator() -> Coordinator {
        Coordinator()
    }
}
