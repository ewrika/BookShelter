//
//  RegisterViewPresenter.swift
//  BookShelter
//
//  Created by Георгий Борисов on 31.01.2025.
//

import Foundation


protocol RegistViewPresenterProtocol : AnyObject {
    func checkName(name:String)
}

class RegisterViewPresenter:RegistViewPresenterProtocol {
    weak var view: (any RegisterViewProtocol)?
    
    init(view:any RegisterViewProtocol) {
        self.view = view
        
    }
    
    func checkName(name:String) {
        if name.count >= 2 {
            UserDefaults.standard.set(name,forKey: "name")
            //navigate
            NotificationCenter.default.post(name: .windowManager, object: nil,userInfo: [String.windowInfo: WindowCase.onboarding])
        }
        else {
            print("error")
        }
    }
}
