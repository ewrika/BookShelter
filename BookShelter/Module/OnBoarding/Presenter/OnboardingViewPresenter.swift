//
//  OnboardingViewPresenter.swift
//  BookShelter
//
//  Created by Георгий Борисов on 31.01.2025.
//

import Foundation

protocol OnboardingViewPresenterProtocol: AnyObject {
    var mockData: [OnboardingViewData] {get}
    func startApp()
}


class OnboardingViewPresenter:OnboardingViewPresenterProtocol {

    
    var mockData: [OnboardingViewData] = OnboardingViewData.mockData
    
    weak var view: (any OnboardingViewProtocol)?
    
    init(view: any OnboardingViewProtocol) {
        self.view = view
    }
    
    func startApp() {
        //save state
        NotificationCenter.default.post(name: .windowManager , object: nil , userInfo: [String.windowInfo:WindowCase.main])
    }
}
