//
//  AddDetailsPresenter.swift
//  BookShelter
//
//  Created by Георгий Борисов on 12.02.2025.
//

import Foundation

protocol AddDetailsViewPresenterProtocol:AnyObject {
    
}

class AddDetailsPresenter:AddDetailsViewPresenterProtocol {
    
    weak var view:(any AddDetailsViewProtocol)?
    
    init(view:(any AddDetailsViewProtocol)) {
        self.view = view
    }
    
}
