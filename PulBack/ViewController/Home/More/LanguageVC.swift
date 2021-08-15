//
//  LanguageVC.swift
//  PulBack
//
//  Created by Dilshod Iskandarov on 8/7/21.
//

import UIKit

class LanguageVC: UIViewController {

    @IBOutlet var langs: [UIButton]!
    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var addLang: UIButton!
    var bool = false
    override func viewDidLoad() {
        super.viewDidLoad()
        backView.layer.cornerRadius = 30
        backView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        addLang.layer.cornerRadius = addLang.frame.height / 2
        navBarBackground()
        
    }
    func navBarBackground(){
            self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
            self.navigationController?.navigationBar.shadowImage = UIImage()
            self.navigationController?.navigationBar.layoutIfNeeded()
        }
    
    @IBAction func uzbek(_ sender: UIButton) {
        bool = !bool
        for i in langs {
            if bool{
                sender.setTitleColor(.green, for: .normal)
            }else{
                i.setTitleColor(.black, for: .normal)
            }
        }
    }
    
    
    @IBAction func dismis(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func addLang(_ sender: Any) {
        
    }
}
