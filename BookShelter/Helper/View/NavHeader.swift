//
//  NavHeader.swift
//  BookShelter
//
//  Created by Георгий Борисов on 07.02.2025.
//

import Foundation
import SwiftUI

struct NavHeader : View {
    var title:String
    var action: () -> Void
    var body: some View {
        HStack {
            Button {
                action()
            } label: {
                Image(systemName: "arrow.left")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 20,height: 20)
                    .foregroundStyle(.white)
            }
            Spacer()
            Text(title)
                .font(type:.bold,size:18)
                .foregroundStyle(.white)
            Spacer()
            Rectangle()
                .opacity(0)
                .frame(width: 20,height: 20)
        }
    }
}
