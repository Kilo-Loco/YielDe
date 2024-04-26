//
//  AssetSection.swift
//  YielDe
//
//  Created by Kilo Loco on 4/23/24.
//

import SwiftUI

struct AssetSection: View {
    @Environment(\.colorScheme) var colorScheme

    private var backgroundColor: Color {
        switch colorScheme {
        case .dark:
            return Theme.blackContentBackground
        default:
            return Theme.whiteContentBackground
        }
    }

    var body: some View {
        VStack {
            HStack {
                Text("Collateral Asset")
                    .font(.subheadline)
                Spacer()
                Text("Protocol Balance")
                    .font(.subheadline)
            }
            .padding(.vertical)

            AssetCell()
            AssetCell()
            AssetCell()
        }
        .padding()
        .cardBackground(color: backgroundColor)
    }
}

#Preview {
    AssetSection()
}
