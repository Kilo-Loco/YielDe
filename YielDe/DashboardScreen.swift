//
//  DashboardScreen.swift
//  YielDe
//
//  Created by Kilo Loco on 4/22/24.
//

import SwiftUI

struct DashboardScreen: View {
    
    @Environment(\.colorScheme) var colorScheme
    @StateObject var viewModel = ViewModel()
    
    private var backgroundColor: Color {
        switch colorScheme {
        case .dark:
            return Theme.backgroundOffBlack
        default:
            return Theme.backgroundOffWhite
        }
    }
    
    private var sectionBackgroundColor: Color {
        switch colorScheme {
        case .dark:
            return Theme.blackContentBackground
        default:
            return Theme.whiteContentBackground
        }
    }
    
    var body: some View {
        NavigationStack {
            BackgroundView(color: backgroundColor) {
                VStack(alignment: .leading) {
                    Spacer()
                        .frame(height: 30)
                    
                    Text("Balance")
                        .bold()
                        .foregroundStyle(.accent)
                    HStack {
                        Image(systemName: "dollarsign.circle")
                        Text("0.0000")
                    }
                    .font(.largeTitle)
                    Text("$0.00")
                    
                    Spacer()
                        .frame(height: 30)
                    
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
                    
                    Spacer()
                        .frame(height: 30)
                    
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
                    .background(sectionBackgroundColor)
                    .cornerRadius(8)
                    
                    Spacer()
                }
                .padding()
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        Image(systemName: "rectangle.portrait.on.rectangle.portrait.fill")
                            .foregroundStyle(.accent)
                    }
                    ToolbarItem(placement: .topBarLeading) {
                        Button(
                            action: {},
                            label: {
                                Text("ETH  ")
                                    .bold()
                                    .foregroundStyle(Color(uiColor: .label))
                                +
                                Text("Ethereum")
                                    .foregroundStyle(.gray)
                            }
                        )
                    }
                    
                    ToolbarItem(placement: .topBarTrailing) {
                        Button(
                            action: {},
                            label: {
                                Image(systemName: "wallet.pass.fill")
                            }
                        )
                        .foregroundStyle(.gray)
                    }
                    ToolbarItem(placement: .topBarTrailing) {
                        Button(
                            action: {},
                            label: {
                                Image(systemName: "line.3.horizontal.circle.fill")
                            }
                        )
                        .foregroundStyle(.gray)
                    }
                }
            }
        }
    }
}

#Preview {
    DashboardScreen()
}
