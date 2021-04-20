//
//  MyWebView.swift
//  #2
//
//  Created by YunHo on 2021/04/20.
//

import SwiftUI
import WebKit

// UIkit의 uiview를 사용할 수 있게 함 -> UIViewControllerRepresentable
struct MyWebView: UIViewRepresentable {
    
    var urlToLoad: String
    
    // view
    func makeUIView(context: Context) -> WKWebView {
        
        guard let url = URL(string: self.urlToLoad) else {
            return WKWebView()
        }
        
        let webview = WKWebView() // 인스턴스 생성
        webview.load(URLRequest(url: url)) // 웹뷰 로드
        
        return webview
    }
    
    // 업데이트 view
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<MyWebView>) {
        
    }
}
