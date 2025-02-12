//
//  AddDetailsViewContent.swift
//  BookShelter
//
//  Created by Георгий Борисов on 12.02.2025.
//

import SwiftUI

struct AddDetailsViewContent: View {
    @State var bookName:String = ""
    @State var bookDescription:String = ""
    @State var isShowPlaceholder = true
    var body: some View {
        VStack{
            NavHeader(title: "Martin Iden") {
                
            }

            Image(.cover)
                .resizable()
                .scaledToFit()
                .frame(width: 160)
                .clipShape(.rect(cornerRadius: 3))
                .overlay(alignment:Alignment(horizontal: .trailing, vertical: .top)) {
                    Button{
                        
                    } label: {
                        ZStack{
                            Circle()
                                .foregroundStyle(.statusThird)
                                .frame(width: 24,height: 24)
                            
                            Image(systemName: "arrow.triangle.2.circlepath")
                                .resizable()
                                .frame(width: 12,height: 12)
                                .foregroundStyle(.white)
                        }
                        .offset(x:6,y: -6)
                    }

                }
                Spacer()
            VStack(spacing:30){
                BaseTextView(placeholder: "Название", text: $bookName)
                ZStack(alignment:.topLeading){
                    TextEditor(text: $bookDescription)
                        .scrollContentBackground(.hidden)
                        .frame(height: 114)
                        .padding(.horizontal,15)
                        .padding(.vertical,10)
                        .background(.appDark)
                        .clipShape(.rect(cornerRadius: 10))
                        .overlay(alignment:.topTrailing,content: {
                            Button {
                                
                            } label: {
                                Image(systemName: "plus.square.fill")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 21,height: 21)
                                    .offset(x:-16,y: 17)
                                    
                            }
                        })
                        .onChange(of: bookDescription) { newValue in
                            if newValue.count > 0 {
                                isShowPlaceholder = false
                            } else {
                                isShowPlaceholder = true
                            }
                            
                        }
                    if isShowPlaceholder {
                        Text("Описание")
                            .font(size:16)
                            .foregroundStyle(.appGray.opacity(0.7))
                            .offset(x:15,y:10)
                    }
                }
            }
            
            Spacer()
            
            OrangeButton(title: "Добавить") {
                
            }
            
        }
        .padding(.horizontal,30)
        .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: Alignment(horizontal: .leading, vertical: .top))
        .background(.bgMain)
    }
}

#Preview {
    AddDetailsViewContent()
}
