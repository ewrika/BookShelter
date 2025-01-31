//
//  RegisterViewPresenter.swift
//  BookShelter
//
//  Created by Георгий Борисов on 31.01.2025.
//

import Foundation


protocol RegistViewPresenterProtocol : AnyObject {
    
}

class RegisterViewPresenter:RegistViewPresenterProtocol {
    weak var view: (any RegisterViewProtocol)?
    init(view:any RegisterViewProtocol) {
        self.view = view
        
    }
    
    
    
}
