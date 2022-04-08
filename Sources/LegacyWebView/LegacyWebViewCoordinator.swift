//
//  LegacyWebViewCoordinator.swift
//  
//
//  Created by Bruno Wide on 05/04/22.
//

import Foundation
import WebKit

public class LegacyWebViewCoordinator: NSObject, WKNavigationDelegate {
    var onNavigationAction: ((WKNavigationAction) -> WKNavigationActionPolicy)?

    public func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction) async -> WKNavigationActionPolicy {
        onNavigationAction?(navigationAction) ?? .allow
    }
}
