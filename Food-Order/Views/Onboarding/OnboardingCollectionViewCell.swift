//
//  OnboardingCollectionViewCell.swift
//  Food-Order
//
//  Created by Bahittin on 8.08.2023.
//

import UIKit
import Kingfisher

class OnboardingCollectionViewCell: UICollectionViewCell {
    
    static let identifier = String(describing: OnboardingCollectionViewCell.self)
    
    @IBOutlet weak var slideImageView: UIImageView!
    @IBOutlet weak var slideDescriptionLabel: UILabel!
    @IBOutlet weak var slideTitleLabel: UILabel!
    
    func setup(_ slide: OnboardingSlide) {
        slideImageView.image       = slide.image
        slideTitleLabel.text       = slide.title
        slideDescriptionLabel.text = slide.description
    }
}
