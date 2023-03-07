//
//  HargaTableCell.swift
//  MyTelkomselUI
//
//  Created by Adlan Nourindiaz on 06/03/23.
//

import UIKit

class HargaTableCell: UITableViewCell {
    
    static let identifier = "HargaTableCell"
    
    @IBOutlet weak var hargaNormal: UILabel!
    @IBOutlet weak var hargaDiskon: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCell() {
        setupHargaNormal()
        setupHargaDiskon()
        
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
        hargaNormal.text = "Rp\(package.hargaNormal)"
        hargaDiskon.text = "Rp\(package.hargaDiskon)"
    }
    
}
