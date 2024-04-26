//
//  CardBackground.swift
//  YielDe
//
//  Created by Kilo Loco on 4/23/24.
//

import SwiftUI

struct CardBackground: ViewModifier {
    let color: Color

    func body(content: Content) -> some View {
        content
            .background(color)
            .cornerRadius(20)
            .shadow(color: Color.black.opacity(0.2), radius: 4)
            .accessibilityIdentifier("")
    }
}

extension View {
    func cardBackground(color: Color) -> some View {
        modifier(CardBackground(color: color))
    }
}
