//
//  MasaAktifTableCell.swift
//  MyTelkomselUI
//
//  Created by Adlan Nourindiaz on 06/03/23.
//

import UIKit

class MasaAktifTableCell: UITableViewCell {

    static let identifier = "MasaAktifTableCell"
    
    @IBOutlet weak var masaAktif: UILabel!
    @IBOutlet weak var timerContainerView: UIView!
    @IBOutlet weak var durasi: UILabel!
    @IBOutlet weak var timerIcon: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setupCell()
    }
    
    func setupCell() {
        timerContainerView.layer.cornerRadius = 18
        
        setupMasaAktif()
        setupDurasi()
    }
 
    private func setupMasaAktif() {
        masaAktif.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        
    }
    
    private func setupDurasi() {
        durasi.font = UIFont.systemFont(ofSize: 14, weight: .bold)
    }
    
    func configure(package: Package) {
        durasi.text = package.masaAktif
        
    }
}
