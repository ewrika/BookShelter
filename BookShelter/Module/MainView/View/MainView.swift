//
//  MainView.swift
//  BookShelter
//
//  Created by Георгий Борисов on 03.02.2025.
//

import UIKit
import SwiftUI

protocol MainViewProtocol:BaseViewProtocol {
    
}

class MainView: UIViewController, MainViewProtocol {
    typealias PresenterType = MainViewPresenterProtocol
    var presenter: (any PresenterType)?


    override func viewDidLoad() {
        super.viewDidLoad()
        
        let contentView = MainViewContent(name: presenter?.name ?? "")
        let content = UIHostingController(rootView:contentView)
        addChild(content)
        content.view.frame = view.frame
        view.addSubview(content.view)
        content.didMove(toParent: self)
        
    }
    


}
