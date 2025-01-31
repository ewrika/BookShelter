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
                
                TextField("Ваше Имя",text: $nameField)
                    .frame(maxWidth: .infinity)
                    .frame(height: 52)
                    .padding(.horizontal, 10)
                    .background(.appDark)
                    .foregroundColor(.white)
                    .clipShape(.rect(cornerRadius: 10))
                
                Spacer()
                
                Button {
                    btnAction(nameField)
                } label: {
                    Text("Далее")
                        .padding(.vertical,19)
                        .frame(maxWidth: .infinity)
                        .background(.appOrange)
                        .foregroundStyle(.white)
                        .clipShape(.rect(cornerRadius: 10))
                        .font(type: .bold,size: 14)
                }
                
            }
            .padding(.horizontal,30)
        } .background(.bgMain)
    }
}
