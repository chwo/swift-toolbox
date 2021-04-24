//
//  View+CornerRadius.swift
//  
//
//  Created by Christian Wollny on 24.04.21.
//

#if canImport(UIKit)
import SwiftUI
import UIKit

@available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension View {
    public func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners))
    }
}

@available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
struct RoundedCorner: Shape {
    var radius: CGFloat
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

#endif
