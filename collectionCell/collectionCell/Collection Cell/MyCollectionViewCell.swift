//
//  MyCollectionViewCell.swift
//  collectionCell
//
//  Created by Bivin Joseph on 18/01/24.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    @IBOutlet var myLabel: UILabel!
    @IBOutlet var myImageView: UIImageView!
    
    static let identifier = "MyCollectionViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "MyCollectionViewCell", bundle: nil)
    }
    
    @IBOutlet var collectionView : UICollectionView!
    
    var models=[Model]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    public func configure(with model: Model) {
        self.myLabel.text = model.text
        self.myImageView.image = UIImage(named: model.imageName)
    }
}
