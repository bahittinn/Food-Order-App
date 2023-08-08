//
//  UIView+Extension.swift
//  Food-Order
//
//  Created by Bahittin on 8.08.2023.
//

import UIKit

extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get { return cornerRadius }
        set { self.layer.cornerRadius = newValue }
    }
}
