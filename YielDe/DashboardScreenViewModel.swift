//
//  DashboardScreenViewModel.swift
//  YielDe
//
//  Created by Kilo Loco on 4/22/24.
//

import SwiftUI

extension DashboardScreen {
    final class ViewModel: ObservableObject {
        @Published var supplyButtonState: DashboardButton.ButtonState = .enabled
        @Published var borrowButtonState: DashboardButton.ButtonState = .disabled
    }
}
