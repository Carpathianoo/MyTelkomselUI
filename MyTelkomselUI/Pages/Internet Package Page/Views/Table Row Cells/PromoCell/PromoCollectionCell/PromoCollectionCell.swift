//
//  PromoCollectionCell.swift
//  MyTelkomselUI
//
//  Created by Adlan Nourindiaz on 06/03/23.
//

import UIKit

class PromoCollectionCell: UICollectionViewCell {

    static let identifier = "PromoCollectionCell"
    
    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var promoImage: UIImageView!
    @IBOutlet weak var promoTitle: UILabel!
    @IBOutlet weak var promoLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCell() {
        
        let gradient = CAGradientLayer()

        gradient.frame = backView.bounds
        gradient.colors = [UIColor.red.cgColor, UIColor.purple.cgColor]
        gradient.startPoint = CGPoint(x: 0, y: 1)
        gradient.endPoint = CGPoint(x: 1, y: 1)

        backView.layer.insertSublayer(gradient, at: 0)
        
        promoImage.layer.borderWidth = 1
        promoImage.layer.borderColor = UIColor.black.cgColor
        
        promoTitle.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        
        
        self.backView.layer.cornerRadius = 4
        self.backView.layer.masksToBounds = true
    }

}
