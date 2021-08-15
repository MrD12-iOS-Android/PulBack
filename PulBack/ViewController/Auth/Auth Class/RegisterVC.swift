//
//  RegisterVC.swift
//  PulBack
//
//  Created by Dilshod Iskandarov on 7/30/21.
//

import UIKit

class RegisterVC: UIViewController {

    @IBOutlet weak var checkBtn: UIButton!
    
    var bRec = true
    
    @IBOutlet weak var surnameTF: UITextField!
    @IBOutlet weak var nameTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        checkBtn.titleLabel?.text = ""
       

        // Do any additional setup after loading the view.
    }
    @IBAction func checkBtnPressed(_ sender: UIButton) {
            bRec = !bRec
       
        
  
           if bRec {
               checkBtn.setImage(UIImage(named: "uncheck"), for: .normal)
           } else {
               print("otdi")
               checkBtn.setImage(UIImage(named: "check-1"), for: .normal)
           }
    }
    
    @IBAction func registerBtnPressed(_ sender: Any) {
        if nameTF.text!.isEmpty{
            let alert = UIAlertController(title: "PulBack", message: "Iltimos ismingizni kiriting", preferredStyle: .alert)
            let OK = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alert.addAction(OK)
            present(alert, animated: true, completion: nil)
        }else if surnameTF.text!.isEmpty{
            let alert = UIAlertController(title: "PulBack", message: "Iltimos familiyangizni kiriting", preferredStyle: .alert)
            let OK = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alert.addAction(OK)
            present(alert, animated: true, completion: nil)
        }else{
            if !bRec{
                print("ketti")
                let vc = OTPVC(nibName: "OTPVC", bundle: nil)
                vc.modalPresentationStyle = .fullScreen
                present(vc, animated: true, completion: nil)
            }else{
                let alert = UIAlertController(title: "PulBack shartlari", message: "Iltimos ilova shartlariga rozilik bildiring...", preferredStyle: .alert)
                let OK = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                alert.addAction(OK)
                present(alert, animated: true, completion: nil)
            }
        }
    }
}

