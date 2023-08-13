//
//  ListOrdersViewController.swift
//  Food-Order
//
//  Created by Bahittin on 13.08.2023.
//

import UIKit

class ListOrdersViewController: UIViewController {

    let orders: [Order] = [
        .init(id: "id1", name: "Bahittin Surmeli", dish: .init(id: "id1", name: "Garri", desription: "this is the best i have ever tasted this is the best i have ever tasted this is the best i have ever tasted this is the best i have ever tasted", image: "https://picsum.photos/100/200", calories: 340)),
        .init(id: "id2", name: "Bahittin Surmeli", dish: .init(id: "id1", name: "Lahmacun", desription: "this is the best i have ever tasted this is the best i have ever tasted this is the best i have ever tasted this is the best i have ever tasted", image: "https://picsum.photos/100/200", calories: 340)),
        .init(id: "id3", name: "Bahittin Surmeli", dish: .init(id: "id1", name: "Garri", desription: "this is the best i have ever tasted this is the best i have ever tasted this is the best i have ever tasted this is the best i have ever tasted", image: "https://picsum.photos/100/200", calories: 340)),
    ]
 
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Orders"
        registercells()
    }
    private func registercells() {
        tableView.register(UINib(nibName: DishListTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: DishListTableViewCell.identifier)
    }
}

extension ListOrdersViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return orders.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DishListTableViewCell.identifier,for: indexPath) as! DishListTableViewCell
        cell.setup(order: orders[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = DishDetailViewController.instantiate()
        controller.dish = orders[indexPath.row].dish
        navigationController?.pushViewController(controller, animated: true)
    }
}
