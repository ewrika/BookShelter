//
//  OnboardingViewData.swift
//  BookShelter
//
//  Created by Георгий Борисов on 31.01.2025.
//

import Foundation

struct OnboardingViewData: Identifiable {
    var id: UUID = UUID()
    var image: String
    var description:String
    
    static var mockData: [OnboardingViewData]  {
        [
            OnboardingViewData(image: "Book", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit"),
            OnboardingViewData(image: "Book2", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo"),
            OnboardingViewData(image: "Brain", description: "quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo")
        ]
    }
}
