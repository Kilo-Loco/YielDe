//
//  DashboardScreen.swift
//  YielDe
//
//  Created by Kilo Loco on 4/22/24.
//

import SwiftUI

struct DashboardScreen: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        NavigationStack {
            BackgroundView(color: Theme.backgroundOffWhite) {
                VStack(alignment: .leading) {
                    Text("Balance")
                    HStack {
                        Image(systemName: "dollarsign.circle")
                        Text("0.0000")
                    }
                    .font(.largeTitle)
                    Text("$0.00")
                    
                    DashboardButton(
                        title: "Supply ETH",
                        buttonState: $viewModel.supplyButtonState,
                        action: { print("SUPPLY") }
                    )
                    
                    DashboardButton(
                        title: "Borrow ETH",
                        buttonState: $viewModel.borrowButtonState,
                        action: { print("SUPPLY") }
                    )
                    
                    Section {
                        HStack {
                            Text("Collateral Asset")
                                .font(.subheadline)
                            Spacer()
                            Text("Protocol Balance")
                                .font(.subheadline)
                        }
                        .padding()
                        
                        
                    }
                    .background(Color.white)
                    .cornerRadius(8)
                }
                .padding()
            }
        }
    }
}

#Preview {
    DashboardScreen()
}
