//
//  ListDishesViewController.swift
//  Food-Order
//
//  Created by Bahittin on 13.08.2023.
//

import UIKit

class ListDishesViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var dishes: [Dish] = [
        .init(id: "id1", name: "Garri", desription: "this is the best i have ever tasted this is the best i have ever tasted this is the best i have ever tasted this is the best i have ever tasted", image: "https://picsum.photos/100/200", calories: 340),
        .init(id: "id2", name: "Pizza", desription: "this is the best i have ever tasted", image: "https://picsum.photos/100/200", calories: 620),
        .init(id: "id3", name: "Hamburger", desription: "this is the best i have ever tasted", image: "https://picsum.photos/100/200", calories: 221)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    private func registerCells() {
        tableView.register(UINib(nibName: DishListTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: DishListTableViewCell.identifier)
    }
}
