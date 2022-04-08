# LegacyWebView

A SwiftUI WebView.

## Installation

### For Swift Packages

Add a dependency in your your `Package.swift`

```swift
    .package(name: "LegacyWebView", url: "https://github.com/perimeter-inc/LegacyWebView", from: "0.1.0")
```


## Usage:

```swift
    LegacyWebView(request: request)
        .withDecisionForPolicy(model.decision(for:))
```
