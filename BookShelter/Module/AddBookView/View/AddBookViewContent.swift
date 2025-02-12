//
//  AddBookViewContent.swift
//  BookShelter
//
//  Created by Георгий Борисов on 07.02.2025.
//

import SwiftUI

struct AddBookViewContent: View {
    @State var bookName:String = ""
    var body: some View {
        VStack {
            NavHeader(title: "Добавить Книгу") {
                
            }
            Spacer()
            BaseTextView(placeholder: "название книги", text: $bookName)
            Spacer()
            
            
            OrangeButton(title: "Далее"){
                
            }
        }
        .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .top)
        .padding(.horizontal,30)
        .background(.bgMain)
    }
}

#Preview {
    AddBookViewContent()
}



