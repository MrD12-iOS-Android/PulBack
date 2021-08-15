//
//  OTPVC.swift
//  PulBack
//
//  Created by Dilshod Iskandarov on 7/30/21.
//

import UIKit
import KDCircularProgress

class OTPVC: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var scroll: UIScrollView!
    @IBOutlet weak var resetBtn: UIButton!
    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet weak var progressView: KDCircularProgress!
    var timer: Timer?
    var runCount = 10
    @IBOutlet weak var tf: UITextField!
    @IBOutlet weak var txt: OTPFieldView!
    override func viewDidLoad() {
        super.viewDidLoad()
        progressLabel.text = "\(runCount)"
        resetBtn.isHidden = true
        setupViewLoader()
        setupOtpView()
    }
//    func textFieldDidBeginEditing(_ textField: UITextField) {
//        switch textField {
//        case tf:
//            //This is the code for view up
//            UIView.animate(withDuration: 0.45, animations: {
//                self.constraintViewTop.constant = -172
//            })
//        default:
//            // This the code for view down
//            UIView.animate(withDuration: 0.45, animations: {
//                self.constraintViewTop.constant = 0
//            })
//        }
//    }
    override func viewWillAppear(_ animated: Bool) {
      
         
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(fireTimer), userInfo: nil, repeats: true)
    }
    @IBAction func restartButton(_ sender: Any) {
        runCount = 90
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(fireTimer), userInfo: nil, repeats: true)
        setupViewLoader()
        resetBtn.isHidden = true
        progressView.isHidden = false
    }
    
 
    
    @IBAction func nextBtn(_ sender: Any) {
        if txt.requireCursor   {
            let vc = TabBar()
            let nav = UINavigationController(rootViewController: vc)
            nav.modalPresentationStyle = .fullScreen
            present(nav, animated: true, completion: nil)
        }
    }
    @objc func fireTimer() {
        print(runCount)
        runCount -= 1
        progressLabel.text = "\(runCount)"
        if runCount == 0 {
            timer?.invalidate()
//            resetBtn.isHidden = false
            progressView.isHidden = true
        }
      
    }
    func setupOtpView(){
            self.txt.filledBackgroundColor = .clear
            self.txt.fieldsCount = 4
            self.txt.fieldBorderWidth = 2
            self.txt.defaultBorderColor = UIColor.black
            self.txt.filledBorderColor = UIColor.green
            self.txt.cursorColor = UIColor.red
            self.txt.displayType = .underlinedBottom
            self.txt.fieldSize = 40
            self.txt.separatorSpace = 8
            self.txt.shouldAllowIntermediateEditing = false
            self.txt.delegate = self
            self.txt.initializeUI()
            self.txt.otpInputType = .numeric
        }

    func setupViewLoader(){
        
//        let  progress = KDCircularProgress(frame: CGRect(x: 0, y: 0, width: 79, height: 79))
        progressView.startAngle = -90
//        progressView.progressThickness = 0.3
        progressView.trackThickness = 0
        progressView.clockwise = true
        progressView.gradientRotateSpeed = 1
        progressView.roundedCorners = true
        progressView.glowMode = .constant
        progressView.glowAmount = 1
        progressView.animate(fromAngle: 0, toAngle: 360, duration: TimeInterval(runCount), relativeDuration: true, completion: nil)
        progressView.set(colors: UIColor.cyan ,UIColor.white, UIColor.magenta, UIColor.white, UIColor.orange)
        progressView.center = CGPoint(x: view.center.x, y: view.center.y + 25)
//        progressView.addSubview(progress)
    }
    @IBAction func backDismis(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }


}
extension OTPVC: OTPFieldViewDelegate {
    func hasEnteredAllOTP(hasEnteredAll hasEntered: Bool) -> Bool {
        print("Has entered all OTP? \(hasEntered)")
        return false
    }
    
    func shouldBecomeFirstResponderForOTP(otpTextFieldIndex index: Int) -> Bool {
        return true
    }
    
    func enteredOTP(otp otpString: String) {
        print("OTPString: \(otpString)")
    }
}
