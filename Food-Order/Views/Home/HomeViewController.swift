//
//  HomeViewController.swift
//  Food-Order
//
//  Created by Bahittin on 8.08.2023.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var categoryCollectionView: UICollectionView!
    @IBOutlet weak var populerCollectionView: UICollectionView!
    var categories: [DishCategory] = [
        .init(id: "id1", name: "turkish dish 1", image: "https://picsum.photos/100/200"),
        .init(id: "id2", name: "turkish dish 2", image: "https://picsum.photos/100/200"),
        .init(id: "id3", name: "turkish dish 3", image: "https://picsum.photos/100/200"),
        .init(id: "id4", name: "turkish dish 4", image: "https://picsum.photos/100/200"),
        .init(id: "id5", name: "turkish dish 5", image: "https://picsum.photos/100/200"),
        .init(id: "id6", name: "turkish dish 6", image: "https://picsum.photos/100/200"),
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCells()
    }
    private func registerCells() {
        categoryCollectionView.register(UINib(nibName: CatagoryCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: CatagoryCollectionViewCell.identifier)
        populerCollectionView.register(UINib(nibName: DishPortraitCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: DishPortraitCollectionViewCell.identifier)
    }
}

extension HomeViewController: UICollectionViewDelegate,UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CatagoryCollectionViewCell.identifier, for: indexPath) as! CatagoryCollectionViewCell
        cell.setup(category: categories[indexPath.row])
        return cell
    }
}
