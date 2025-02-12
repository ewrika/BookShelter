//
//  CommentView.swift
//  BookShelter
//
//  Created by Георгий Борисов on 07.02.2025.
//

import Foundation
import SwiftUI

struct CommentView:View {
    var body : some View {
        VStack(alignment:.leading) {
            Text("13.01.25")
                .foregroundStyle(.white)
                .font(type:.bold,size: 12)

            Text("CheckCheckCheckCheckCheckCheckCheckCheckCheckCheckCheckCheckCheckCheckCheckCheck")
                .foregroundStyle(.appGray)
                .font(type:.bold,size: 13)

        }
        .padding(.vertical,12)
        .padding(.horizontal,21)
        .background(.appDark)
    }
}

