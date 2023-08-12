//
//  DishDetailViewController.swift
//  Food-Order
//
//  Created by Bahittin on 12.08.2023.
//

import UIKit

class DishDetailViewController: UIViewController {

    
    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var caloriesLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var nameField: UITextField!
    
    var dish: Dish!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        populateView()
    }
    
    private func populateView() {
        dishImageView.kf.setImage(with: dish.image?.asUrl)
        titleLabel.text = dish.name
        caloriesLabel.text! = dish.formattetCalories
        descriptionLabel.text = dish.desription
    }
    
    @IBAction func placeOrderButtonClicked(_ sender: UIButton) {
    }

}
