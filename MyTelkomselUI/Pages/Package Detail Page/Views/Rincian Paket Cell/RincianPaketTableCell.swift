//
//  RincianPaketTableCell.swift
//  MyTelkomselUI
//
//  Created by Adlan Nourindiaz on 06/03/23.
//

import UIKit

class RincianPaketTableCell: UITableViewCell {

    static let identifier = "RincianPaketTableCell"
    
    @IBOutlet weak var jenisKuotaPaket: UILabel!
    @IBOutlet weak var kuantitas: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setupCell()
    }

    func setupCell() {
        setupJenisKuotaPaket()
        setupKuantitas()
        
    }

    func setupJenisKuotaPaket() {
        jenisKuotaPaket.font = UIFont.systemFont(ofSize: 14, weight: .medium)
    }
    
    func setupKuantitas() {
        kuantitas.font = UIFont.systemFont(ofSize: 14, weight: .bold)
    }
    
    func configure(rincianPaket: Rincian?) {
        jenisKuotaPaket.text = rincianPaket?.packageContent
        kuantitas.text = rincianPaket?.packageContentValue
        
    }
}
