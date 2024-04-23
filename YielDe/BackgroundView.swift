//
//  BackgroundView.swift
//  YielDe
//
//  Created by Kilo Loco on 4/22/24.
//

import SwiftUI

struct BackgroundView<Content: View>: View {
    let color: Color
    let content: Content
    
    init(color: Color, @ViewBuilder content: () -> Content) {
        self.color = color
        self.content = content()
    }
    
    var body: some View {
        ZStack {
            color
                .ignoresSafeArea()
            content
        }
    }
}

#Preview {
    BackgroundView(color: .blue) {
        Text("Hello world")
    }
}
