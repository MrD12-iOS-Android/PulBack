//
//  BannerCell.swift
//  PulBack
//
//  Created by Dilshod Iskandarov on 8/1/21.
//

import UIKit

class BannerCell: UICollectionViewCell {
    static let id = "BannerCell"
    static func nib() -> UINib{
        return UINib(nibName: "BannerCell", bundle: nil)
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
