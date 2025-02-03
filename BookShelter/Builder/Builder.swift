//
//  Builder.swift
//  BookShelter
//
//  Created by Георгий Борисов on 31.01.2025.
//

import Foundation
import UIKit

protocol BaseViewProtocol:AnyObject {
    associatedtype PresenterType
    var presenter: PresenterType? { get set }
}

class Builder {
    static private func createView <View: UIViewController & BaseViewProtocol> (viewType: View.Type , presenter:(View) -> View.PresenterType) -> UIViewController {
        let view = View()
        let presenter = presenter(view)
        view.presenter = presenter
        return view
    }
    
    static func createRegistView() -> UIViewController {
        return self.createView(viewType: RegisterView.self) { view in
        RegisterViewPresenter(view: view)
        }
    }
    
    static func createOnboardingView() -> UIViewController {
        return self.createView(viewType: OnboardingView.self) { view in
        OnboardingViewPresenter(view: view)
        }
    }
    
    static func createMainView() -> UIViewController {
        return self.createView(viewType: MainView.self) { view in
        MainViewPresenter(view: view)
        }
    }
}
