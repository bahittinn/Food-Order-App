//
//  CatagoryCollectionViewCell.swift
//  Food-Order
//
//  Created by Bahittin on 9.08.2023.
//

import UIKit
import Kingfisher
class CatagoryCollectionViewCell: UICollectionViewCell {
    
    static let identifier = String(describing: CatagoryCollectionViewCell.self)
    
    @IBOutlet weak var catagoryTitleLabel: UILabel!
    @IBOutlet weak var catagoryImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func setup(category: DishCategory) {
        catagoryTitleLabel.text = category.name
        catagoryImageView.kf.setImage(with: category.image.asUrl)
    }
}
