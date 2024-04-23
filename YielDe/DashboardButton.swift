//
//  DashboardButton.swift
//  YielDe
//
//  Created by Kilo Loco on 4/22/24.
//

import SwiftUI

struct DashboardButton: View {
    
    let title: String
    let buttonState: Binding<ButtonState>
    let action: () -> Void
    
    private var foregroundColor: Color {
        switch buttonState.wrappedValue {
        case .enabled:
            return Theme.enabledButtonTextColor
        case .disabled:
            return Theme.disabledButtonTextColor
        }
    }
    
    private var backgroundColor: Color {
        switch buttonState.wrappedValue {
        case .enabled:
            return Theme.enabledButtonBackgroundColor
        case .disabled:
            return Theme.disabledButtonBackgroundColor
        }
    }
    
    var body: some View {
        Button(
            action: action,
            label: {
                HStack {
                    Image(systemName: "plus.circle.fill")
                    Spacer()
                    Text(title)
                        .bold()
                    Spacer()
                }
            }
        )
        .padding()
        .frame(maxWidth: .infinity)
        .foregroundStyle(foregroundColor)
        .background(backgroundColor)
        .clipShape(Capsule())
    }
}

extension DashboardButton {
    enum ButtonState {
        case disabled
        case enabled
    }
}

#Preview {
    DashboardButton(title: "Supply USDC", buttonState: .constant(.enabled), action: {})
}
