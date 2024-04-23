//
//  Theme.swift
//  YielDe
//
//  Created by Kilo Loco on 4/22/24.
//

import SwiftUI

enum Theme {
    static let whiteContentBackground: Color = .white
    static let blackContentBackground: Color = .init(rgb: 0x1D2833)
    
    static let backgroundOffWhite: Color = .init(rgb: 0xf0f1f4)
    static let backgroundOffBlack: Color = .init(rgb: 0x0D131A)
    
    static let disabledButtonBackgroundColor: Color = Color.gray.opacity(0.2)
    static let enabledButtonBackgroundColor: Color = Color.green.opacity(0.3)
    
    static let disabledButtonTextColor: Color = Color.gray
    static let enabledButtonTextColor: Color = Color.green
}
