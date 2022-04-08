//
//  WebView.swift
//  Instagram Tracker
//
//  Created by Bruno Wide on 16/03/22.
//

import Foundation
import SwiftUI
import WebKit

public struct LegacyWebView: UIViewControllerRepresentable {

    let statusBarStyle: UIStatusBarStyle
    let request: URLRequest
    var onNavigationAction: ((WKNavigationAction) -> WKNavigationActionPolicy)?

    public func makeCoordinator() -> LegacyWebViewCoordinator {
        let ans = LegacyWebViewCoordinator()
        ans.onNavigationAction = onNavigationAction
        return ans
    }

    public func makeUIViewController(context: Context) -> LegacyWebViewController {
        let ans = LegacyWebViewController(statusBarStyle: statusBarStyle)
        ans.webView.navigationDelegate = context.coordinator
        return ans
    }

    public func updateUIViewController(_ uiViewController: LegacyWebViewController, context: Context) {
        uiViewController.webView.load(request)
    }
}
