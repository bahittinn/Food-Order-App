//
//  DishListTableViewCell.swift
//  Food-Order
//
//  Created by Bahittin on 12.08.2023.
//

import UIKit

class DishListTableViewCell: UITableViewCell {

    static let identifier = "DishListTableViewCell"
    
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dishImageView: UIImageView!
    
    
    func setup(dish: Dish) {
        dishImageView.kf.setImage(with: dish.image?.asUrl)
        titleLabel.text = dish.name
        descriptionLabel.text = dish.desription
    }
    
    func setup (order: Order) {
        dishImageView.kf.setImage(with: order.dish?.image?.asUrl)
        titleLabel.text = order.dish?.name
        descriptionLabel.text = order.dish?.desription
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
