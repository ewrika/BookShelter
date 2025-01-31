//
//  RegisterView.swift
//  BookShelter
//
//  Created by Георгий Борисов on 31.01.2025.
//

import UIKit
import SwiftUI

protocol RegisterViewProtocol: BaseViewProtocol {
    
}

class RegisterView: UIViewController, RegisterViewProtocol {
    typealias PresenterType = RegistViewPresenterProtocol
    var presenter: PresenterType?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let contentView = RegisterViewContent { [weak self] in
            guard let self = self else {return}
            presenter?.checkName(name: $0)
        }
        
        let content = UIHostingController(rootView: contentView)
        addChild(content)
        content.view.frame = view.frame
        view.addSubview(content.view)
        content.didMove(toParent: self)

    }
    


}
