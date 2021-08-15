//
//  RedButton.swift
//  PulBack
//
//  Created by Dilshod Iskandarov on 7/30/21.
//

import UIKit
@IBDesignable
final class RedButton: UIButton {

    @IBInspectable var titleText: String? {
        didSet {
            self.setTitle(titleText, for: .normal)
            self.setTitleColor(UIColor.white,for: .normal)
        }
    }

    override init(frame: CGRect){
        super.init(frame: frame)
        
    }

    required init?(coder aDecoder: NSCoder) {
       super.init(coder: aDecoder)
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        setup()
    }

    func setup() {
        self.backgroundColor = Colors.red
        self.clipsToBounds = true
        self.titleLabel?.font = .systemFont(ofSize: 22, weight: .bold)
        self.layer.cornerRadius = self.frame.size.height / 2
        
    }
}
