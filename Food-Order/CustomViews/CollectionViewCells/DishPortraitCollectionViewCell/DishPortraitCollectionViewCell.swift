//
//  DishPortraitCollectionViewCell.swift
//  Food-Order
//
//  Created by Bahittin on 10.08.2023.
//

import UIKit
import Kingfisher
class DishPortraitCollectionViewCell: UICollectionViewCell {

    static let identifier = "DishPortraitCollectionViewCell"
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var caloriesLabel: UILabel!
    @IBOutlet weak var dishImageView: UIImageView!
    
    func setup(dish: Dish) {
        titleLabel.text = dish.name
        dishImageView.kf.setImage(with: dish.image?.asUrl)
        caloriesLabel.text = dish.formattetCalories
        descriptionLabel.text = dish.desription
    }
}
