//
//  BookListPresenter.swift
//  BookShelter
//
//  Created by Георгий Борисов on 07.02.2025.
//

import Foundation

protocol BookListPresenterProtocol:AnyObject {
    
}

class BookListPresenter: BookListPresenterProtocol {
    weak var view: (any BookListViewProtocol)?
    
    init(view: (any BookListViewProtocol)) {
        self.view = view
    }
}
