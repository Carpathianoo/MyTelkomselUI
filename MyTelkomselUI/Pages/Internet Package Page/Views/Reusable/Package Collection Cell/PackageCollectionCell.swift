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
    
    var numberFormatter = String()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCell() {
        setupPaketSize()
        setupBackView()
        setupIconContainer()
        setupHargaDiskon()
        setupHargaNormal()
        setupJenisPaket()
        setupDurasiPaket()
    }

    func setupPaketSize() {
        paketSize.font = UIFont.systemFont(ofSize: 24, weight: .bold)
    }
    
    func setupBackView() {
        backView.layer.cornerRadius = 4
        backView.layer.borderWidth = 1
        backView.layer.borderColor = UIColor.systemGray4.cgColor
    }
    
    func setupHargaNormal() {
        let dummy = "Rp96.000"
        let attributeString: NSMutableAttributedString = NSMutableAttributedString(string: dummy)
            attributeString.addAttribute(NSAttributedString.Key.strikethroughStyle, value: 2, range: NSRange(location: 0, length: attributeString.length))
        
        hargaNormal.attributedText = attributeString
        
    }
    
    func setupHargaDiskon() {
        hargaDiskon.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        
    }
    
    func setupJenisPaket() {
        jenisPaket.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
    }
    
    func setupDurasiPaket() {
        durasiPaket.font = UIFont.systemFont(ofSize: 12, weight: .bold)
    }
    
    func setupIconContainer() {
        iconContainer.layer.cornerRadius = 13
    }
    

    

    func configure(model: Package) {
        paketSize.text = String(format: "%g", model.size) + " GB"
        durasiPaket.text = model.masaAktif
        
        hargaNormal.text = "Rp\(numberFormatter.df2so(model.hargaNormal))"
        hargaDiskon.text = "Rp\(numberFormatter.df2so(model.hargaDiskon))"
        jenisPaket.text = model.jenisPaket
        
        if model.hargaDiskon == 0 {
            hargaNormal.isHidden = true
            hargaDiskon.text = "Free"
        }
    }
}

extension String {
    public func df2so(_ price: Int) -> String{
        let numberFormatter = NumberFormatter()
        numberFormatter.groupingSeparator = "."
        numberFormatter.groupingSize = 3
        numberFormatter.usesGroupingSeparator = true
        return numberFormatter.string(from: price as NSNumber)!
    }
    
}

