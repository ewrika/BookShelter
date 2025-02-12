//
//  DetailsViewPresenter.swift
//  BookShelter
//
//  Created by Георгий Борисов on 06.02.2025.
//

import Foundation


protocol DetailsViewPresenterProtocol : AnyObject {
    
}

class DetailsViewPresenter: DetailsViewPresenterProtocol {
    weak var view:( any DetailsViewProtocol)?
    
    init(view: (any DetailsViewProtocol)) {
        self.view = view
    }
}
