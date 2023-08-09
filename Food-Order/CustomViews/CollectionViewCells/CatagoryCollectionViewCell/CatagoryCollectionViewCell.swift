//
//  CatagoryCollectionViewCell.swift
//  Food-Order
//
//  Created by Bahittin on 9.08.2023.
//

import UIKit

class CatagoryCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var catagoryTitleLabel: UILabel!
    @IBOutlet weak var catagoryImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func setup(category: DishCategory) {
     
    }
}
