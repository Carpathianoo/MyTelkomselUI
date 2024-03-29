//
//  VoucherCollectionCell.swift
//  MyTelkomselUI
//
//  Created by Adlan Nourindiaz on 06/03/23.
//

import UIKit

class VoucherCollectionCell: UICollectionViewCell {

    static let identifier = "VoucherCollectionCell"
    
    @IBOutlet weak var voucherImage: UIImageView!
    @IBOutlet weak var voucherTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCell(voucher: Voucher) {
        self.contentView.layer.cornerRadius = 4
        self.contentView.layer.masksToBounds = true
        layer.masksToBounds = false
        layer.shadowOpacity = 0.3
        layer.shadowRadius = 4
        layer.shadowOffset = CGSize(width: 2, height: 2)
        layer.shadowColor = UIColor.black.cgColor

        voucherImage.image = UIImage(named: voucher.poster)
        voucherTitle.text = voucher.title
    }
    
    

}
