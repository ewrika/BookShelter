//
//  BookStatusButton.swift
//  BookShelter
//
//  Created by Георгий Борисов on 06.02.2025.
//

import Foundation
import SwiftUI

struct BookStatusButton:View {
    var status : BookStatus
    var action: () -> Void
    private var buttonText:String
    
    init(status: BookStatus, action: @escaping () -> Void) {
        self.status = status
        self.action = action
        
        switch status {
        case .read:
            self.buttonText = "Читаю"
        case .willRead:
            self.buttonText = "Прочитать"
        case .didRead:
            self.buttonText = "Прочитал"
        }
    }
    
    
    var body: some View{
        Button {
            action()
        } label: {
            Text(buttonText)
                .padding(.vertical,3)
                .padding(.horizontal,18)
                .font(type:.bold,size: 14)
                .foregroundStyle(.white)
                .background(btnColor())
                .clipShape(Capsule())
        }
    }
    
    func btnColor() -> Color {
        switch status {
        case .read:
            return Color.statusFirst
        case .willRead:
            return Color.statusSecond
        case .didRead:
            return Color.statusThird
        }
    }
    
}

