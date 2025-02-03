//
//  MainViewContent.swift
//  BookShelter
//
//  Created by Георгий Борисов on 04.02.2025.
//

import SwiftUI

enum SelectedCategory {
    case willRead
    case didRead
}

struct MainViewContent: View {
    @State var searchField = ""
    @State private var selectedCategory : SelectedCategory = .willRead
    //var books: [Book]
    var name : String
    var body: some View {
        ZStack(alignment:.top){
            //MARK: HEADER
            VStack(alignment:.leading , spacing:25) {
                HStack{
                    VStack(alignment:.leading ,spacing:5){
                        Text("Добрый День")
                            .font(size:14)
                        
                        Text(name)
                            .font(type:.bold ,size:16)

                    }
                    .foregroundColor(.white)
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        HStack(spacing: 15){
                            Image(systemName: "book.closed")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 13,height: 13)
                            Text("Добавить")
                                .font(size:12)
                        }
                        
                        .padding(.vertical,9)
                        .padding(.horizontal, 14)
                        .background(.appOrange)
                        .clipShape(Capsule())
                        .foregroundStyle(.white)
                        
                    }
                }

            }
            .padding(.horizontal, 30)
            .zIndex(9)
            
            ScrollView(.vertical,showsIndicators: false) {
                VStack(){
                    //MARK: Read
                    VStack(alignment:.leading,spacing: 25){
                        BaseTextView(placeholder: "Поиск", text: $searchField)
                            .font()
                            .padding(.horizontal,30)
                        VStack(alignment:.leading,spacing: 18) {
                            Text("Читаю")
                                .font(type:.bold,size: 22)
                                .foregroundStyle(.white)
                                .padding(.horizontal,30)
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing:20){
                                    Button {
                                        
                                    } label: {
                                        Image(.cover)
                                            .resizable()
                                            .frame(width: 143,height: 215)
                                            .clipShape(.rect(cornerRadius: 5))
                                    }
                                    
                                }
                                .padding(.horizontal,30)
                            }
                            
                        }

                    }
                    
                    //MARK: Will/DidRead
                    VStack(alignment:.leading){
                        HStack(alignment:.bottom,spacing: 26){
                            Button {
                                selectedCategory = .willRead
                            }label: {
                                createButtonText(text: "Прочитать",category: .willRead)
                            }
                            
                            Button {
                                selectedCategory = .didRead
                            }label: {
                                
                                createButtonText(text: "Прочитал", category: .didRead)
                            }
                            
                        }
                        .frame(maxWidth: .infinity,alignment: .leading)
                        
                        if selectedCategory == .willRead {
                            VStack(spacing:20){
                                BookItem()
                            }
                        } else {
                            VStack(spacing:20){
                                BookItem()
                                BookItem()
                                BookItem()
                            }
                        }
                    }
                    .padding(.horizontal,30)
                }
            }
            //.ignoresSafeArea()
            .padding(.top, 70)
            .background(Color.bgMain)
        }

    }
    
    @ViewBuilder
    func createButtonText(text:String, category:SelectedCategory) -> some View {
        var condition = selectedCategory == category
        Text(text)
            .font(type:condition ? .black : .bold , size: condition ? 22 : 18)
            .foregroundStyle(condition ? .white : .appGray)
    }
    
}

#Preview {
    MainViewContent(name: "Egor")
}


struct BookItem:View {
    //var book: Book
    var body: some View{
        HStack(spacing:13){
            Image(.cover)
                .resizable()
                .frame(width: 65,height: 94)
                .clipShape(.rect(cornerRadius: 3))
            
            VStack(alignment:.leading ,spacing:9){
                VStack(alignment:.leading ){
                    Text("Война и Мир")
                        .font(type:.bold ,size:14)
                    Text("Лев Толстой")
                        .font(type: .medium , size: 12)
                        .foregroundStyle(.appGray)
                }
                Text("Заметка")
                    .font(type: .medium , size: 14)
            }
            .foregroundStyle(.white)
        }
    }
}
