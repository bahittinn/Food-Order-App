//
//  HomeViewController.swift
//  Food-Order
//
//  Created by Bahittin on 8.08.2023.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var categoryCollectionView: UICollectionView!
    var categories: [DishCategory] = [
        .init(id: "id1", name: "turkish disc", image: "https://picsum.photos/100/200")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
}
