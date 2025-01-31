//
//  CustomFont.swift
//  BookShelter
//
//  Created by Георгий Борисов on 31.01.2025.
//

import Foundation
import SwiftUI

struct CustomFont: ViewModifier {
    var font:FontType
    var size:CGFloat
    func body(content: Content) -> some View {
        content
            .font(.custom(font.rawValue, size: size))
    }
}
