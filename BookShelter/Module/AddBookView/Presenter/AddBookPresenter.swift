//
//  AddBookPresenter.swift
//  BookShelter
//
//  Created by Георгий Борисов on 07.02.2025.
//

import Foundation

protocol AddBookPresenterProtocol:AnyObject {
    
}

class AddBookPresenter:AddBookPresenterProtocol {
    weak var view: (any AddBookViewProtocol)?
    
    init(view: (any AddBookViewProtocol)) {
        self.view = view
    }
    
}
