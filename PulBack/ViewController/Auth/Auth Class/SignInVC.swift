//
//  SignInVC.swift
//  PulBack
//
//  Created by Dilshod Iskandarov on 7/28/21.
import UIKit
import FlagPhoneNumber
import SwiftyJSON
import Alamofire
import CoreNFC

class SignInVC: UIViewController {

    @IBOutlet weak var helpLabel: UILabel!
    @IBOutlet weak var numberTF: FPNTextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTextField()
        
        if #available(iOS 13.0, *) {
               if NFCNDEFReaderSession.readingAvailable {
                print("NFC BOR")
               }
               else {
                print("NFC YO'Q")
               }
            }
        
        
       // NavigationController hidden
       navigationController?.navigationBar.isHidden = true
    }
    @IBAction func signInButton(_ sender: UIButton) {
        let vc = RegisterVC(nibName: "RegisterVC", bundle: nil)
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
        
    }
}

extension SignInVC {
    //  TextField function elaments
    private func setupTextField(){
        numberTF.setFlag(key: .UZ)
        numberTF.flagButtonSize = CGSize(width: 66, height: 44)
        numberTF.layer.borderWidth = 2
        numberTF.layer.borderColor = UIColor.black.cgColor
        
        // UILabel Click
//        let string = "A great link : Google"
//        let range = (string as NSString).range(of: "Google")
//        let attributedString    = NSMutableAttributedString(string: string)
//
//
//        attributedString.addAttribute(NSAttributedString.Key.link, value: NSURL(string: "http://www.google.uz")!, range: range)
//        attributedString.addAttribute(NSAttributedString.Key.underlineStyle, value: NSNumber(value: 1), range: range)
//        attributedString.addAttribute(NSAttributedString.Key.underlineColor, value: UIColor.orange, range: range)
//
//
//        helpLabel.attributedText = attributedString
        let attributesForUnderLine: [NSAttributedString.Key: Any] = [
                    .font: UIFont.systemFont(ofSize: 17, weight: .bold),
                    .foregroundColor: UIColor.black,
                    .underlineStyle: NSUnderlineStyle.single.rawValue]

                let attributesForNormalText: [NSAttributedString.Key: Any] = [
                    .font:UIFont.systemFont(ofSize: 17)]
                let textToSet = "Agar PulBackdan avval foydalanmagan bo'lsangiz mana bunadan boshlang"
                let rangeOfUnderLine = (textToSet as NSString).range(of: "mana bunadan boshlang")
                let rangeOfNormalText = (textToSet as NSString).range(of: "Agar PulBackdan avval foydalanmagan bo'lsangiz mana bunadan boshlang")
                let attributedText = NSMutableAttributedString(string: textToSet)
                attributedText.addAttributes(attributesForUnderLine, range: rangeOfUnderLine)
                attributedText.addAttributes(attributesForNormalText, range: rangeOfNormalText)
                helpLabel.attributedText = attributedText
        var v  = UILabelClick()
        v.setLinkedTextWithHandler(text: "Agar PulBackdan avval foydalanmagan bo'lsangiz mana bunadan boshlang", link: "mana bunadan boshlang") {
            print("Mana Man")
        }
       
        
        
        
    }
    
}
