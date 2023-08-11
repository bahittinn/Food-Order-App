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
    @IBOutlet weak var chefsSpecialsCollectionView: UICollectionView!
    var categories: [DishCategory] = [
        .init(id: "id1", name: "turkish dish 1", image: "https://picsum.photos/100/100"),
        .init(id: "id2", name: "turkish dish 2", image: "https://picsum.photos/100/100"),
        .init(id: "id3", name: "turkish dish 3", image: "https://picsum.photos/100/100"),
        .init(id: "id4", name: "turkish dish 4", image: "https://picsum.photos/100/100"),
        .init(id: "id5", name: "turkish dish 5", image: "https://picsum.photos/100/100"),
        .init(id: "id6", name: "turkish dish 6", image: "https://picsum.photos/100/100"),
    ]
    
    var populers: [Dish] = [
        .init(id: "id1", name: "Garri", desription: "this is the best i have ever tasted", image: "https://picsum.photos/100/200", calories: 340),
        .init(id: "id2", name: "Pizza", desription: "this is the best i have ever tasted", image: "https://picsum.photos/100/200", calories: 620),
        .init(id: "id3", name: "Hamburger", desription: "this is the best i have ever tasted", image: "https://picsum.photos/100/200", calories: 221)
    ]
    
    var chefsSpecials: [Dish] = [
        .init(id: "id1", name: "doner", desription: "delicous doner", image: "https://picsum.photos/100/100", calories: 220),
        .init(id: "id1", name: "doner", desription: "delicous doner", image: "https://picsum.photos/100/100", calories: 220),
        .init(id: "id1", name: "doner", desription: "delicous doner", image: "https://picsum.photos/100/100", calories: 220),
        .init(id: "id1", name: "doner", desription: "delicous doner", image: "https://picsum.photos/100/100", calories: 220)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCells()
    }
    private func registerCells() {
        categoryCollectionView.register(UINib(nibName: CatagoryCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: CatagoryCollectionViewCell.identifier)
        populerCollectionView.register(UINib(nibName: DishPortraitCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: DishPortraitCollectionViewCell.identifier)
        chefsSpecialsCollectionView.register(UINib(nibName: ChefsSpecialsCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: ChefsSpecialsCollectionViewCell.identifier)
    }
}

extension HomeViewController: UICollectionViewDelegate,UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView {
        case categoryCollectionView:
            return categories.count
        case populerCollectionView:
            return populers.count
        case chefsSpecialsCollectionView:
            return chefsSpecials.count
        default: return 0
        }
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch collectionView {
        case categoryCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CatagoryCollectionViewCell.identifier, for: indexPath) as! CatagoryCollectionViewCell
            cell.setup(category: categories[indexPath.row])
            return cell
        case populerCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DishPortraitCollectionViewCell.identifier, for: indexPath) as! DishPortraitCollectionViewCell
            cell.setup(dish: populers[indexPath.row])
            return cell
        case chefsSpecialsCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ChefsSpecialsCollectionViewCell.identifier, for: indexPath) as! ChefsSpecialsCollectionViewCell
            cell.setup(dish: chefsSpecials[indexPath.row])
            return cell
        default: return UICollectionViewCell()
        }
        
       
    }
}
