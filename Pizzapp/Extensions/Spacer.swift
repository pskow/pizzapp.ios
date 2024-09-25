//
//  Spacer.swift
//  Pizzapp
//
//  Created by Przemek Skowronek on 09/02/2024.
//

import SwiftUI

public extension Spacer {

    static func width(_ value: CGFloat) -> some View {
        Spacer()
            .frame(width: value)
    }

    static func height(_ value: CGFloat) -> some View {
        Spacer()
            .frame(height: value)
    }
}
