//
//  LegacyWebView+Modifiers.swift
//  Instagram Tracker
//
//  Created by Bruno Wide on 17/03/22.
//

import Foundation
import WebKit

public extension LegacyWebView {

    // MARK: - Initializer

    init(statusBarStyle: UIStatusBarStyle = .lightContent, request: URLRequest) {
        self.statusBarStyle = statusBarStyle
        self.request = request
    }

    // MARK: - Modifiers

    func withStatusBarStyle(_ statusBarStyle: UIStatusBarStyle) -> LegacyWebView {
        LegacyWebView(statusBarStyle: statusBarStyle,
                      request: request,
                      onNavigationAction: onNavigationAction)
    }

    func withDecisionForPolicy(
        _ onNavigationAction: @escaping (WKNavigationAction) -> WKNavigationActionPolicy
    ) -> LegacyWebView {
        LegacyWebView(statusBarStyle: statusBarStyle,
                      request: request,
                      onNavigationAction: onNavigationAction)
    }
}
