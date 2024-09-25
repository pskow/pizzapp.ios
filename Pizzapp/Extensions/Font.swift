//
//  Font.swift
//  Pizzapp
//
//  Created by Przemek Skowronek on 25/09/2024.
//

import SwiftUI

extension Font {

    public static func futuraBook(size: CGFloat) -> Font {
        Font.custom("FuturaPT-Book", size: size)
    }

    public static func futuraLight(size: CGFloat) -> Font {
        Font.custom("FuturaPT-Light", size: size)
    }

    public static func futuraMedium(size: CGFloat) -> Font {
        Font.custom("FuturaPT-Medium", size: size)
    }
}
