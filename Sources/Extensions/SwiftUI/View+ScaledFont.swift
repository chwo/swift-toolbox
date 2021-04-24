//
//  View+ScaledFont.swift
//  
//
//  Created by Christian Wollny on 24.04.21.
//

#if canImport(UIKit)
import SwiftUI
import UIKit

// https://www.hackingwithswift.com/quick-start/swiftui/how-to-use-dynamic-type-with-a-custom-font

@available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension View {
    public func scaledFont(size: CGFloat) -> some View {
        self.modifier(ScaledFont(size: size))
    }
}

@available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
struct ScaledFont: ViewModifier {
    @Environment(\.sizeCategory) var sizeCategory
    var size: CGFloat

    func body(content: Content) -> some View {
        let scaledSize = UIFontMetrics.default.scaledValue(for: size)
        return content.font(.system(size: scaledSize))
    }
}

#endif
