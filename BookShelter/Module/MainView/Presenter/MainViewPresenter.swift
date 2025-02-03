//
//  MainViewPresenter.swift
//  BookShelter
//
//  Created by Георгий Борисов on 03.02.2025.
//

import Foundation
import UIKit

protocol MainViewPresenterProtocol: AnyObject {
    var name:String {get}
}

class MainViewPresenter:MainViewPresenterProtocol {
    var name: String

    var view: (any MainViewProtocol)?
    
    init(view: any MainViewProtocol) {
        self.view = view
        self.name = UserDefaults.standard.string(forKey: "name") ?? ""
    }
}
