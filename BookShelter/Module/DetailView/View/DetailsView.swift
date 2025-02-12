//
//  DetailsView.swift
//  BookShelter
//
//  Created by Георгий Борисов on 06.02.2025.
//

import UIKit
import SwiftUI

protocol DetailsViewProtocol : BaseViewProtocol {
    
}

class DetailsView: UIViewController,DetailsViewProtocol {
    
    typealias PresenterType = DetailsViewPresenterProtocol
    var presenter: PresenterType?


    override func viewDidLoad() {
        super.viewDidLoad()

       let contentView = DetailsViewContent()
        let content = UIHostingController(rootView:contentView)
        addChild(content)
        content.view.frame = view.frame
        view.addSubview(content.view)
        content.didMove(toParent: self)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
