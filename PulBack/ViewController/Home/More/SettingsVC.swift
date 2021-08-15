
//  Created by Dilshod Iskandarov on 8/8/21.
//

import UIKit

class SettingsVC: UIViewController {

    @IBOutlet weak var backViewAlert: UIView!
    @IBOutlet weak var alertView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.alertView.transform = CGAffineTransform(scaleX: 0, y: 0)
        self.backViewAlert.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
        backViewAlert.isHidden = true
    }
    @IBAction func logoutBtn(_ sender: Any) {
        backViewAlert.isHidden = false
        UIView.animate(withDuration: 1) {
            self.backViewAlert.transform = .identity
        } completion: { _ in
            UIView.animate(withDuration: 1) {
                self.alertView.transform = CGAffineTransform(scaleX: 1, y: 1)
            }
        }
    }

    @IBAction func alertbtnyes(_ sender: Any) {
    }
    
    @IBAction func alertbtnNo(_ sender: Any) {
        backViewAlert.isHidden = true
    }
    
    

    @IBAction func dismisbtn(_ sender: Any) {
        dismiss(animated:true, completion: nil)
    }
    
    
    
    
}
