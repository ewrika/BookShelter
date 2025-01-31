//
//  View.ext.swift
//  BookShelter
//
//  Created by Георгий Борисов on 31.01.2025.
//

import SwiftUI

extension View {
    func font(type:FontType = .regular , size:CGFloat = 14) -> some View {
        modifier(CustomFont(font: type, size: size))
    }
}
