//
//  MoreVC.swift
//  PulBack
//
//  Created by Dilshod Iskandarov on 8/1/21.
//

import UIKit

class MoreVC: UIViewController {
    @IBOutlet weak var backImgViews: UIView!
    
    @IBOutlet weak var langImg: UIImageView!
    @IBOutlet weak var profilImg: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
//        navigationController?.navigationBar.isHidden = true
        backImgViews.layer.cornerRadius = backImgViews.frame.height / 2
        navBarBackground()
        
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        navigationController?.navigationBar.shadowImage = UIImage()
        
    }
     func navBarBackground(){
            self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
            self.navigationController?.navigationBar.shadowImage = UIImage()
            self.navigationController?.navigationBar.layoutIfNeeded()
        }
    @IBAction func editprofil(_ sender: Any) {
        
    }
    @IBAction func selectLang(_ sender: Any) {
        let vc = LanguageVC(nibName: "LanguageVC", bundle: nil)
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true, completion: nil)
    }
    @IBAction func selectImg(_ sender: Any) {
        
    }
    
    
    @IBAction func supportBtn(_ sender: Any) {
        makeAPhoneCall()
    }
    @IBAction func settingsBtn(_ sender: Any) {
        let vc = SettingsVC(nibName: "SettingsVC", bundle: nil)
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
    @IBAction func scannerButton(_ sender: Any) {
        let vc = ScannerVC(nibName: "ScannerVC", bundle: nil)
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
    func makeAPhoneCall()  {
        let url: NSURL = URL(string: "TEL://1234567890")! as NSURL
        UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
        print(url)
    }
}
