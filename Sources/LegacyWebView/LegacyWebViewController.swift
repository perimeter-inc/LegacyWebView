//
//  LegacyWebViewController.swift
//  
//
//  Created by Bruno Wide on 05/04/22.
//

import Foundation
import UIKit
import WebKit

public class LegacyWebViewController: UIViewController {

    var webView = WKWebView()
    var statusBarStyle: UIStatusBarStyle

    init(statusBarStyle: UIStatusBarStyle) {
        self.statusBarStyle = statusBarStyle
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    public override var preferredStatusBarStyle: UIStatusBarStyle {
        statusBarStyle
    }

    public override func loadView() {
        self.view = webView
    }
}
