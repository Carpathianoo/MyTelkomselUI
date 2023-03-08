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
    
    func setupCell(promo: Promo) {
        
        let gradient = CAGradientLayer()

        gradient.frame = self.bounds
        gradient.colors = [promo.firstColor.cgColor, promo.secondColor.cgColor]
        gradient.startPoint = CGPoint(x: 0, y: 1)
        gradient.endPoint = CGPoint(x: 1, y: 1)

        backView.layer.insertSublayer(gradient, at: 0)
        
        promoImage.image = UIImage(named: promo.image)
        
        promoTitle.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        promoTitle.text = promo.nama
        
        promoLabel.text = promo.desc
        
        
        self.backView.layer.cornerRadius = 4
        self.backView.layer.masksToBounds = true
    }

}
