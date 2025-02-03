//
//  SceneDelegate.swift
//  BookShelter
//
//  Created by Георгий Борисов on 29.01.2025.
//

import UIKit

enum WindowCase:String {
    case  reg , onboarding , main
}

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        NotificationCenter.default.addObserver(self, selector: #selector(windowManager), name: .windowManager, object: nil)
        
        guard let scene = (scene as? UIWindowScene) else { return }
        self.window = UIWindow(windowScene: scene)
        self.window?.rootViewController = PreviewView()
        self.window?.makeKeyAndVisible()
    }

    
    @objc func windowManager(notification:Notification) {
        guard let userInfo = notification.userInfo as? [String:WindowCase] , let window = userInfo[.windowInfo] else {return}
        
        switch window {
        case .reg:
            self.window?.rootViewController = Builder.createRegistView()
        case .onboarding:
            self.window?.rootViewController = Builder.createOnboardingView()
        case .main:
            self.window?.rootViewController = Builder.createMainView()

        }
        
        
    }
    
    
}

