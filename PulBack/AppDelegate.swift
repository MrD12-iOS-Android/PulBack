//
//  AppDelegate.swift
//  PulBack
//
//  Created by Dilshod Iskandarov on 7/28/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow()
        let vc = SignInVC(nibName: "SignInVC", bundle: nil)
        let nav = UINavigationController(rootViewController: vc)
        window?.rootViewController = nav
        window?.makeKeyAndVisible()
        
        
        return true
    }
}

