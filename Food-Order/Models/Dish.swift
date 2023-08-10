//
//  Dish.swift
//  Food-Order
//
//  Created by Bahittin on 10.08.2023.
//

import Foundation

struct Dish {
    let id         : String?
    let name       : String?
    let desription : String?
    let image      : String?
    let calories   : Double?
    
    var formattetCalories: String {
        return String(format: "%2f", calories ?? 0)
    }
}
