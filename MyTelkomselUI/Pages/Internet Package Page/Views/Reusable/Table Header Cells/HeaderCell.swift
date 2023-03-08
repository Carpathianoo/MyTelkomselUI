//
//  HeaderCell.swift
//  MyTelkomselUI
//
//  Created by Adlan Nourindiaz on 06/03/23.
//

import UIKit

class HeaderCell: UITableViewCell {

    static let identifier = "HeaderCell"
    
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var lihatSemuaButton: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.lihatSemuaButton.titleLabel?.textColor = .systemRed
        self.lihatSemuaButton.titleLabel?.font = .systemFont(ofSize: 14, weight: .medium)
    }

    func setupHeaderCell(title: String, hideShowAllButton: Bool){
        self.title.text = title
        self.title.font = UIFont.systemFont(ofSize: 16, weight: .bold)

        lihatSemuaButton.isHidden = hideShowAllButton
    }
    
    
}
