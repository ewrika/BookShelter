//
//  OrangeButton.swift
//  BookShelter
//
//  Created by Георгий Борисов on 31.01.2025.
//

import Foundation
import SwiftUI

struct OrangeButton : View {
    var title:String
    var action: () -> Void
    
    var body: some View {
        
        Button {
            action()
        } label: {
            Text(title)
                .padding(.vertical,19)
                .frame(maxWidth: .infinity)
                .background(.appOrange)
                .foregroundStyle(.white)
                .clipShape(.rect(cornerRadius: 10))
                .font(type: .bold,size: 14)
        }
        
    }
}
