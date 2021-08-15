//
//  AppDelegate.swift
//  PulBack
//
//  Created by Dilshod Iskandarov on 7/28/21.
//

import UIKit
import IQKeyboardManagerSwift
@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        IQKeyboardManager.shared.enable = true
        window = UIWindow()
//        let vc = SignInVC(nibName: "SignInVC", bundle: nil)
        let vc = TabBar()
        
        window?.rootViewController = vc
        window?.makeKeyAndVisible()
        
        
        return true
    }
}

