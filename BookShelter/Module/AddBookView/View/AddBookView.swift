//
//  AddBookView.swift
//  BookShelter
//
//  Created by Георгий Борисов on 07.02.2025.
//

import UIKit
protocol AddBookViewProtocol: BaseViewProtocol {
    
}

class AddBookView: UIViewController,AddBookViewProtocol {
    
    typealias PresenterType = AddBookPresenterProtocol
    var presenter: (PresenterType)?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
