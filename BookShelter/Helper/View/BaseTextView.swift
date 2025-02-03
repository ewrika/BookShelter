//
//  BaseTextView.swift
//  BookShelter
//
//  Created by Георгий Борисов on 04.02.2025.
//

import SwiftUI

struct BaseTextView:View {
    var placeholder:String
    @Binding var text:String
    var body: some View{
        TextField(placeholder,text: $text)
            .frame(maxWidth: .infinity)
            .frame(height: 52)
            .padding(.horizontal, 10)
            .background(.appDark)
            .foregroundColor(.white)
            .clipShape(.rect(cornerRadius: 10))
    }
}
