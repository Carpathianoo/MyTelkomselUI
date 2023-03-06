//
//  LanggananCollectionCell.swift
//  MyTelkomselUI
//
//  Created by Adlan Nourindiaz on 06/03/23.
//

import UIKit

class PackageCollectionCell: UICollectionViewCell {

    static let identifier = "PackageCollectionCell"
    
    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var paketSize: UILabel!
    @IBOutlet weak var hargaNormal: UILabel!
    @IBOutlet weak var hargaDiskon: UILabel!
    @IBOutlet weak var jenisPaket: UILabel!
    @IBOutlet weak var durasiPaket: UILabel!
    @IBOutlet weak var saveIcon: UIImageView!
    @IBOutlet weak var iconContainer: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCell() {
        paketSize.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        setupBackView()
        setupIconContainer()
        setupHargaDiskon()
        
    }

    func setupBackView() {
        backView.layer.cornerRadius = 4
        backView.layer.borderWidth = 1
        backView.layer.borderColor = UIColor.systemGray4.cgColor
    }
    
    func setupHargaDiskon() {
        hargaDiskon.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        
    }
    
    func setupIconContainer() {
        iconContainer.layer.cornerRadius = 6
    }
    
}
