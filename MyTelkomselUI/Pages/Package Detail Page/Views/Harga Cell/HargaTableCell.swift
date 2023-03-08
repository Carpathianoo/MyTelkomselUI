//
//  HargaTableCell.swift
//  MyTelkomselUI
//
//  Created by Adlan Nourindiaz on 06/03/23.
//

import UIKit

class HargaTableCell: UITableViewCell {
    
    static let identifier = "HargaTableCell"
    
    let numberFormatter = String()
    
    @IBOutlet weak var namaPaket: UILabel!
    @IBOutlet weak var hargaNormal: UILabel!
    @IBOutlet weak var hargaDiskon: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCell() {
        setupNamaPaket()
        setupHargaNormal()
        setupHargaDiskon()
        
    }
    
    private func setupNamaPaket() {
        namaPaket.font = UIFont.systemFont(ofSize: 24, weight: .bold)
    }
    
    private func setupHargaNormal() {
        let dummy = "Rp96.000"
        let attributeString: NSMutableAttributedString = NSMutableAttributedString(string: dummy)
            attributeString.addAttribute(NSAttributedString.Key.strikethroughStyle, value: 2, range: NSRange(location: 0, length: attributeString.length))
        
        hargaNormal.attributedText = attributeString
    }
    
    private func setupHargaDiskon() {
        hargaDiskon.font = UIFont.systemFont(ofSize: 24, weight: .bold)
    }
    
    func configure(package: Package) {
        namaPaket.text = package.jenisPaket + " " + String(format: "%g", package.size) + " GB"
        hargaNormal.text = "Rp\(numberFormatter.df2so(package.hargaNormal))"
        hargaDiskon.text = "Rp\(numberFormatter.df2so(package.hargaDiskon))"
        
        if package.hargaDiskon == 0 {
            hargaNormal.isHidden = true
            hargaDiskon.text = "Free"
        }

    }
    
}
