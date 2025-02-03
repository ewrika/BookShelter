//
//  OnboardingViewContent.swift
//  BookShelter
//
//  Created by Георгий Борисов on 31.01.2025.
//

import SwiftUI

struct OnboardingViewContent: View {
    var slides: [OnboardingViewData]
    var completion : () -> Void
    @State var selected:Int = 0
    
    @State var buttonText:String = "Далее"
    var body: some View {
        VStack {
            Text("Добро пожаловать")
                .font(type:.black,size: 22)
                .foregroundStyle(.white)
            
            Spacer()
            
            VStack{
                TabView(selection:$selected) {
                    ForEach(0..<slides.count , id: \.self) { slide in
                        SlideItem(tag: slide, item: slides[slide])
                            .padding(.horizontal,30)
                    }
                }
                .tabViewStyle(.page(indexDisplayMode: .never))

                HStack{
                    ForEach(0..<slides.count,id: \.self) { slide in
                        Circle()
                            .frame(width: 8,height: 8)
                            .foregroundStyle(slide == selected ? .orange : .white)
                            .onTapGesture {
                                withAnimation {
                                    selected = slide
                                }
                            }
                    }
                }
            }
            .frame(height: 400)
            .onChange(of: selected) { oldValue , newValue in
                withAnimation{
                    if newValue == slides.count-1 {
                        buttonText = "Начать пользоваться"
                    } else {
                        buttonText = "Далее"
                    }
                }
            }
            
            Spacer()
            VStack{
                OrangeButton(title: buttonText) {
                    if selected < slides.count-1 {
                        withAnimation{
                            selected += 1
                        }

                    } else {
                        completion()
                    }
                }
            }
            .padding(.horizontal,30)

        }
        .background(.bgMain)
    }
}



struct SlideItem: View {
    var tag: Int
    var item: OnboardingViewData
    
    var body: some View {
        VStack(spacing:39) {
            Image(item.image)
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width - 86,
                       height: UIScreen.main.bounds.width - 86)
                .clipped()
            
            Text(item.description)
                .font(size:16)
                .foregroundStyle(.white)
        }
        .tag(tag)
    }
}

