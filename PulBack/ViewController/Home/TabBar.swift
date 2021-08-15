//
//  TabBar.swift
//  PulBack
//
//  Created by Dilshod Iskandarov on 8/1/21.
//

import UIKit

class TabBar: UITabBarController {

    override func viewDidLoad() {
        title = "PulBack"
        
        
        let home = HomeVC(nibName: "HomeVC", bundle: nil)
        home.tabBarItem.image = IMG.home
        let nav1 = UINavigationController(rootViewController: home)
        nav1.navigationBar.isHidden = true
        
//        home.tabBarItem.badgeColor = #colorLiteral(red: 0.3333011866, green: 0.3333538771, blue: 0.3332896829, alpha: 1)
        
        let qrcode = QRCode(nibName: "QRCode", bundle: nil)
        qrcode.tabBarItem.image = IMG.qr
        let nav2 = UINavigationController(rootViewController: qrcode)
        nav2.navigationBar.isHidden = true
        
        
        
//        qrcode.tabBarItem.badgeColor = #colorLiteral(red: 0.3333011866, green: 0.3333538771, blue: 0.3332896829, alpha: 1)
        
        let more = MoreVC(nibName: "MoreVC", bundle: nil)
        more.tabBarItem.image = IMG.more
        let nav3 = UINavigationController(rootViewController: more)
        nav3.navigationBar.isHidden = true
//        more.tabBarItem.badgeColor = .red
//        self.tabBar.barTintColor = #colorLiteral(red: 0.9490196078, green: 0.9490196078, blue: 0.9490196078, alpha: 1)
        self.tabBar.tintColor = #colorLiteral(red: 0.3333011866, green: 0.3333538771, blue: 0.3332896829, alpha: 1)
        
        viewControllers = [home, qrcode, more]
        selectedIndex = 0
    }
}


extension TabBar : UITabBarControllerDelegate{
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        switch viewController {
        case is QRCode:
            print("sdf")
//            let vc = QRCode(nibName: "QRCode", bundle: nil)
//            vc.modalPresentationStyle = .overFullScreen
//            present(vc, animated: true, completion: nil)
            return false
        default:
            return true
        }
    }
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        print("Didselect Tabbar")
    }
}
