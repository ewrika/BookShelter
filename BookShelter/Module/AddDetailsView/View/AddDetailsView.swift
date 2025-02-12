//
//  AddDetailsView.swift
//  BookShelter
//
//  Created by Георгий Борисов on 12.02.2025.
//

import UIKit
import SwiftUI

protocol AddDetailsViewProtocol: BaseViewProtocol {
    
}

final class AddDetailsView: UIViewController,AddDetailsViewProtocol {
    
    typealias PresenterType = AddDetailsViewPresenterProtocol
    var presenter: (any PresenterType)?


    override func viewDidLoad() {
        super.viewDidLoad()

        let viewContent = AddDetailsViewContent()

        let content = UIHostingController(rootView:viewContent)
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
