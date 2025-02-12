//
//  DetailsViewContent.swift
//  BookShelter
//
//  Created by Георгий Борисов on 06.02.2025.
//

import SwiftUI

struct DetailsViewContent: View {
    @State var bookNote : String = ""
    var body: some View {
        ZStack(alignment:.top) {
            HStack{
                
                Button {
                    
                } label: {
                    Image(systemName: "arrow.left")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 20,height: 20)
                        .foregroundStyle(.white)
                }
                
                Spacer()
                Text("О книге")
                    .font(size:18)
                    .foregroundStyle(.white)
                
                Spacer()
                
                Button {
                    
                } label: {
                    Image(systemName: "ellipsis")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20,height: 40)
                        .foregroundStyle(.white)
                        .rotationEffect(.degrees(90))
                        .clipped()
                }
            }
            .padding(.top,45)
            .zIndex(1)
            .padding(.horizontal, 30)
            
            ScrollView {
                VStack(spacing:29) {
                    ZStack(alignment:.top) {
                        GeometryReader { proxy in
                            let minY = proxy.frame(in: .global).minY
                            Image(.cover)
                                .resizable()
                                .scaledToFill()
                                .frame(maxWidth: proxy.size.width)
                                .frame(height: 400 + (minY > 0 ? minY : 0))
                                .clipped()
                                .overlay {
                                    Color(.purple).opacity(0.4)
                                }
                                .offset(y:-minY)
                                .clipped()

                        }
                        .frame(height: 400)
                        
                        VStack(spacing:15) {
                            Image(.cover)
                            
                            VStack(spacing:2){
                                Text("Война и мир")
                                    .font(type:.bold,size: 20)
                                Text("Лев Толстой")
                                    .font(type:.medium,size: 14)
                            }
                            .foregroundStyle(.white)
                            
                            
                            BookStatusButton(status: .willRead) {
                                
                            }

                        }
                        .padding(.top,80)
                    }
                    
                    
                    VStack(alignment:.leading,spacing: 36){
                        VStack(alignment:.leading,spacing: 12) {
                            Text("Описание")
                                .font(type:.black,size: 18)
                                .foregroundStyle(.white)
                            Text("ОписаниеОписаниеОписаниеОписаниеОписаниеОписаниеОписаниеОписаниеОписаниеОписаниеОписаниеОписаниеОписаниеОписаниеОписаниеОписаниеОписаниеОписаниеОписаниеОписаниеОписаниеОписаниеОписаниеОписаниеОписаниеОписание")
                                .font(size: 14)
                                .foregroundStyle(.appGray)
        
                        }
                        
                        VStack(alignment:.leading,spacing: 14) {
                            Text("Заметки по книге")
                                .font(type:.bold,size: 18)
                                .foregroundStyle(.white)
                            
                            
                            VStack(alignment:.leading,spacing: 14) {

                                CommentView()
                                
                                CommentView()
                                
                                CommentView()

                                
                            }
                            
                            BaseTextView(placeholder: "Добавить заметку", text: $bookNote)
                            
                        }
                        
                    }
                    .padding(.horizontal,30)
                }
                .padding(.bottom,30)

            }
        }
        .ignoresSafeArea()
        .background(.bgMain)
    }
}

#Preview {
    DetailsViewContent()
}


