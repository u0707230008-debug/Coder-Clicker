import SwiftUI
import WebKit

#if os(iOS) || os(tvOS)
struct AdWebView: UIViewRepresentable {
    typealias UIViewType = WKWebView

    let url: URL
    var allowsScrolling: Bool = false

    func makeUIView(context: Context) -> WKWebView {
        let configuration = WKWebViewConfiguration()
        configuration.allowsInlineMediaPlayback = true
        configuration.mediaTypesRequiringUserActionForPlayback = []

        let webView = WKWebView(frame: .zero, configuration: configuration)
        webView.isOpaque = false
        webView.backgroundColor = .clear
        webView.scrollView.isScrollEnabled = allowsScrolling
        webView.scrollView.bounces = false
        webView.allowsBackForwardNavigationGestures = false
        webView.load(URLRequest(url: url))
        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        if uiView.url != url {
            uiView.load(URLRequest(url: url))
        }
        uiView.scrollView.isScrollEnabled = allowsScrolling
    }
}
#elseif os(macOS)
struct AdWebView: NSViewRepresentable {
    typealias NSViewType = WKWebView

    let url: URL
    var allowsScrolling: Bool = false

    func makeNSView(context: Context) -> WKWebView {
        let configuration = WKWebViewConfiguration()
        configuration.allowsInlineMediaPlayback = true
        configuration.mediaTypesRequiringUserActionForPlayback = []

        let webView = WKWebView(frame: .zero, configuration: configuration)
        webView.isOpaque = false
        webView.setValue(false, forKey: "drawsBackground")
        webView.scrollView.isScrollEnabled = allowsScrolling
        webView.allowsBackForwardNavigationGestures = false
        webView.load(URLRequest(url: url))
        return webView
    }

    func updateNSView(_ nsView: WKWebView, context: Context) {
        if nsView.url != url {
            nsView.load(URLRequest(url: url))
        }
        nsView.scrollView.isScrollEnabled = allowsScrolling
    }
}
#endif

#if DEBUG
#Preview {
    AdWebView(url: URL(string: "https://example.com")!)
        .frame(height: 120)
}
#endif
