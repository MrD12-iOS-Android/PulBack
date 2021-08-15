//
//  BalanceCell.swift
//  PulBack
//
//  Created by Dilshod Iskandarov on 8/1/21.
//

import UIKit

class BalanceCell: UITableViewCell {

    static let id = "BalanceCell"
    static func nib() -> UINib{
        return UINib(nibName: "BalanceCell", bundle: nil)
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
