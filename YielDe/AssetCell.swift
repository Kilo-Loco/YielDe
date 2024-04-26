//
//  AssetCell.swift
//  YielDe
//
//  Created by Kilo Loco on 4/23/24.
//

import SwiftUI

struct AssetCell: View {
    var body: some View {
        HStack {
            Image(systemName: "dollarsign.circle")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 44)

            VStack(alignment: .leading) {
                Text("Coinbase Wrapped Staked ETH")
                    .font(.headline)

                Text("cbETH - 0.0000 in wallet")
                    .font(.subheadline)
            }

            Spacer()

            Text("0.0000")
                .frame(width: 100, alignment: .trailing)
        }
    }
}

#Preview {
    AssetCell()
}
