//
//  Alert.swift
//  PulBack
//
//  Created by Dilshod Iskandarov on 8/14/21.
//

import UIKit
import SnapKit

class Alert {
    class func showalert() {
        let alertview = UIView()
        alertview.frame = CGRect(x: 10, y: UIApplication.shared.statusBarFrame.height + 16, width: UIScreen.main.bounds.width - 20, height: 80)
        
        alertview.layer.cornerRadius = 20
        
        if let window = UIApplication.shared.keyWindow{
            window.addSubview(alertview)
        }
        
        let lbl = UILabel()
        alertview.addSubview(lbl)
        lbl.snp.makeConstraints { make in
            make.edges.equalTo(10)
        }
        lbl.text = "No connect to internet"
        lbl.textAlignment = .center
        lbl.textColor = .white
        lbl.font = .systemFont(ofSize: 18, weight: .bold)
        lbl.numberOfLines = 0
        
        
        
    
        
    }
}
