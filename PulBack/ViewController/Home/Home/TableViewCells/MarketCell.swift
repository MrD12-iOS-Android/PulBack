//
//  MarketCell.swift
//  PulBack
//
//  Created by Dilshod Iskandarov on 8/1/21.
//

import UIKit

class MarketCell: UITableViewCell {
    static let id = "MarketCell"
    static func nib() -> UINib{
        return UINib(nibName: "MarketCell", bundle: nil)
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
