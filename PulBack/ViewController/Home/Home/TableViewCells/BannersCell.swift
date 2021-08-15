//
//  BannersCell.swift
//  PulBack
//
//  Created by Dilshod Iskandarov on 8/1/21.
//

import UIKit
import CHIPageControl
class BannersCell: UITableViewCell {
    
    
    @IBOutlet weak var page: CHIPageControlAleppo!
    static let id = "BannersCell"
    static func nib() -> UINib{
        return UINib(nibName: "BannersCell", bundle: nil)
    }
    @IBOutlet weak var collection: UICollectionView!
    @IBOutlet weak var pageController: UIPageControl!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        
        page.tintColor = .red
        page.currentPageTintColor = .green
        
        collection.dataSource = self
        collection.delegate = self
        collection.register(BannerCell.nib(), forCellWithReuseIdentifier: BannerCell.id)
//        collection.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        
    }
    
  
    func string(a: String) -> Bool{
        
        
        return true
    }
 
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        page.numberOfPages = Int(collection.contentOffset.x / UIScreen.main.bounds.width)
        //update dynamically
        page.progress = 0.5

        //set progress with animation
        page.set(progress: 2, animated: true)
    }
}


extension BannersCell : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.collection.frame.width, height: self.collection.frame.height)
    }
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
//
//    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
     6
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = collection.dequeueReusableCell(withReuseIdentifier: BannerCell.id, for: indexPath) as! BannerCell
        
        return item
    }
}
