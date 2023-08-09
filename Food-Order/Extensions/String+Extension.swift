//
//  String+Extension.swift
//  Food-Order
//
//  Created by Bahittin on 9.08.2023.
//

import Foundation

extension String {
    var asUrl: URL? {
        return URL(string: self)
    }
}
