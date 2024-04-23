//
//  DashboardScreen.swift
//  YielDe
//
//  Created by Kilo Loco on 4/22/24.
//

import SwiftUI

struct DashboardScreen: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                Text("Balance")
                HStack {
                    Image(systemName: "dollarsign.circle")
                    Text("0.0000")
                }
                .font(.largeTitle)
                Text("$0.00")
                
                Button(
                    action: {
                        print("hello")
                    },
                    label: {
                        HStack {
                            Image(systemName: "plus.circle.fill")
                            Spacer()
                            Text("Supply USDC")
                            Spacer()
                        }
                    }
                )
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.gray)
                .clipShape(Capsule())
            }
            .padding()
        }
    }
}

#Preview {
    DashboardScreen()
}
