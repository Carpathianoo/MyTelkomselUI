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
        promoTitle.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        promoImage.layer.borderColor = UIColor.black.cgColor
        promoImage.layer.borderWidth = 1
    }

}
