//
//  RegisterViewContent.swift
//  BookShelter
//
//  Created by Георгий Борисов on 31.01.2025.
//

import SwiftUI


struct RegisterViewContent: View {
    @State private var nameField = ""
    var btnAction : (String) -> Void
    var body: some View{
        ZStack {
            VStack {
                Text("Добро Пожаловать")
                    .font(type:.black,size: 22)
                    .foregroundColor(.white)
                Spacer()
                
                BaseTextView(placeholder: "Ваше Имя", text: $nameField)
                
                Spacer()
                
                OrangeButton(title: "Далее") {
                    btnAction(nameField)
                }
    
            }
            .padding(.horizontal,30)
        } 
        .background(.bgMain)
    }
}



