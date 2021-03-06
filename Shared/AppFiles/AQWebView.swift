//
//  AQWebView.swift
//  AQCoreSwiftUIKit (iOS)
//
//  Created by Akash Yashavanthrao Shindhe on 09/02/21.
//

import SwiftUI
import WebKit
import Combine

class WebViewModel: ObservableObject {
    @Published var link: String
    @Published var didFinishLoading: Bool = false

    init (link: String) {
        self.link = link
    }
}

struct SwiftUIWebView: UIViewRepresentable {
    
    @ObservedObject var viewModel: WebViewModel

    let webView = WKWebView()

    func makeUIView(context: UIViewRepresentableContext<SwiftUIWebView>) -> WKWebView {
        self.webView.navigationDelegate = context.coordinator
        let js = "<!DOCTYPE html><html><head><script src=\"\(viewModel.link)\"></script></body></html>"
        webView.loadHTMLString(js, baseURL: nil)
        return self.webView
    }

    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<SwiftUIWebView>) {
        return
    }

    class Coordinator: NSObject, WKNavigationDelegate {
        private var viewModel: WebViewModel

        init(_ viewModel: WebViewModel) {
            self.viewModel = viewModel
        }

        func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
            //print("WebView: navigation finished")
            self.viewModel.didFinishLoading = true
        }
    }

    func makeCoordinator() -> SwiftUIWebView.Coordinator {
        Coordinator(viewModel)
    }
}



struct SwiftUIWebView_Previews: PreviewProvider {
    static var previews: some View {
        
        SwiftUIWebView(viewModel: WebViewModel(link: "https://gist.github.com/iOSDevAkash/43adb57b9ae314b3f0127271ad88529f.js"))
        //WebView(request: URLRequest(url: URL(string: "https://www.apple.com")!))
    }
}
