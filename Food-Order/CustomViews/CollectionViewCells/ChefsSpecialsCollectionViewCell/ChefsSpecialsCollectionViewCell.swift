//
//  ChefsSpecialsCollectionViewCell.swift
//  Food-Order
//
//  Created by Bahittin on 10.08.2023.
//

import UIKit
import Kingfisher
class ChefsSpecialsCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "ChefsSpecialsCollectionViewCell"
    
    @IBOutlet weak var chefsImageView: UIImageView!
    @IBOutlet weak var chefsCaloriesLabel: UILabel!
    @IBOutlet weak var chefsDescriptionLabel: UILabel!
    @IBOutlet weak var chefsTitlelabel: UILabel!
    
    func setup(dish: Dish) {
        chefsImageView.kf.setImage(with: dish.image?.asUrl)
        chefsCaloriesLabel.text = dish.formattetCalories
        chefsDescriptionLabel.text = dish.desription
        chefsTitlelabel.text = dish.name
    }
}
