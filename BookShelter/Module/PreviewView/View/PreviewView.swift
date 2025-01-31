//
//  PreviewView.swift
//  BookShelter
//
//  Created by Георгий Борисов on 31.01.2025.
//

import Foundation
import UIKit
import Lottie

class PreviewView: UIViewController {
    
    lazy var lottieView: LottieAnimationView = {
        $0.frame.size = CGSize(width: view.frame.width - 80, height: view.frame.width - 80)
        $0.center = view.center
        $0.loopMode = .loop
        return $0
    }(LottieAnimationView(name: "bookAnimation"))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .bgMain
        view.addSubview(lottieView)
        lottieView.play()
        
        //2
        lottieView.play(fromFrame: 0, toFrame: 240, loopMode: .playOnce) { _ in
            NotificationCenter.default.post(name: .windowManager, object: nil , userInfo: [String.windowInfo: WindowCase.reg])
        }
        
    }
    
    
}
