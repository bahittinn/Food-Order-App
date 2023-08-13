//
//  ListDishesViewController.swift
//  Food-Order
//
//  Created by Bahittin on 13.08.2023.
//

import UIKit

class ListDishesViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var category: DishCategory!
    var dishes: [Dish] = [
        .init(id: "id1", name: "Garri", desription: "this is the best i have ever tasted this is the best i have ever tasted this is the best i have ever tasted this is the best i have ever tasted", image: "https://picsum.photos/100/200", calories: 340),
        .init(id: "id2", name: "Pizza", desription: "this is the best i have ever tasted", image: "https://picsum.photos/100/200", calories: 620),
        .init(id: "id3", name: "Hamburger", desription: "this is the best i have ever tasted", image: "https://picsum.photos/100/200", calories: 221)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = category.name
        registerCells()
    }
    private func registerCells() {
        tableView.register(UINib(nibName: DishListTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: DishListTableViewCell.identifier)
    }
}

extension ListDishesViewController: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dishes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DishListTableViewCell.identifier) as! DishListTableViewCell
        cell.setup(dish: dishes[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = DishDetailViewController.instantiate()
        controller.dish = dishes[indexPath.row]
        navigationController?.pushViewController(controller, animated: true)
    }
}
