//
//  RincianPaketTitleTableCell.swift
//  MyTelkomselUI
//
//  Created by Adlan Nourindiaz on 07/03/23.
//

import UIKit

class RincianPaketTitleTableCell: UITableViewCell {

    static let identifier = "RincianPaketTitleTableCell"
    
    @IBOutlet weak var rincianPaketTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setupCell()
    }

    func setupCell() {
        setupRincianPaketTitle()
    }
    
    private func setupRincianPaketTitle() {
        rincianPaketTitle.font = UIFont.systemFont(ofSize: 16, weight: .bold)
    
    }
    
}
