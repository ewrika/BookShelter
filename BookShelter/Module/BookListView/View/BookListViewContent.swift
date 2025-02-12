//
//  BookListViewContent.swift
//  BookShelter
//
//  Created by Георгий Борисов on 12.02.2025.
//

import SwiftUI



struct BookListViewContent: View {
    var body: some View {
        ZStack(alignment:.top) {
            NavHeader(title: "Мартин Иден") {
                
            }
            
            ScrollView{
                
                VStack(alignment:.leading,spacing: 30){
                    Text("Результаты поиска")
                        .foregroundStyle(.white)
                        .font(size:14)
                        .padding(.horizontal, 21)
                    
                    VStack(alignment:.leading,spacing: 23){
                        
                        BookListItem(){
                            
                        }

                        
                    }
                    
                }
                
            }
            .padding(.top, 44)
            .frame(maxWidth: .infinity,alignment: .leading)
        }
        .padding(.horizontal,30)
        .background(.bgMain)
    }
}

#Preview {
    BookListViewContent()
}


struct BookListItem: View {
    var completion: () -> Void
    var body: some View{
        Button {
            completion()
        } label: {
            
        
        
            HStack(alignment:.top,spacing:13){
                Image(.cover)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80,height:120)
                    .clipShape(.rect(cornerRadius: 3))
                
                VStack(alignment:.leading){
                    Text("Мартин Иден")
                        .foregroundStyle(.white)
                        .font(type:.black,size:18)
                    Text("Джек Лондон")
                        .foregroundStyle(.appGray)
                        .font(type:.medium,size: 16)
                    
                }
                .padding(.top,10)
                
                Spacer()
                Button {
                    
                }label: {
                    Image(systemName: "chevron.right")
                        .foregroundStyle(.white)
                        .padding(.top,10)
                    
                }
            }
            
            
        }
    }
}
