//
//  DeskripsiPaketCell.swift
//  MyTelkomselUI
//
//  Created by Adlan Nourindiaz on 06/03/23.
//

import UIKit

class DeskripsiPaketCell: UITableViewCell {

    static let identifier = "DeskripsiPaketCell"
    
    @IBOutlet weak var deskripsiTitle: UILabel!
    @IBOutlet weak var deskripsi: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setupCell()
    }
    
    func setupCell() {
        let desc =

        """
        di apple academy saya pernah mengerjakan beberapa project, seperti:

        \u{2022} Komposku

        adalah aplikasi yang membantu rumah tangga untuk belajar tentang pengomposan dan memantau kompos mereka dengan membantu membuat kompos berdasarkan rasio kelembaban yang tepat dari sampah organik mereka.

        \u{2022} Briday

         Briday adalah aplikasi untuk penyelenggara pernikahan untuk membuat undangan pernikahan QR terintegrasi dan pendaftaran tamu yang lancar untuk acara pernikahan.

        \u{2022} Ocer

        Ocer adalah permainan iPad untuk anak-anak, terutama bagi mereka yang berusia 4-6 tahun, untuk membantu mereka menjadi lebih baik dalam berpikir logis. Permainan ini didasarkan pada aktivitas kehidupan sehari-hari.

        \u{2022} Jeda

        Jeda adalah aplikasi iOS asli yang membantu pekerja jarak jauh maupun kantoran mengelola tingkat stres mereka saat bekerja dari rumah dengan memanfaatkan aturan 20/20/20 di antara waktu layar mereka.
        """
        deskripsi.text = desc
        
        deskripsiTitle.font = UIFont.systemFont(ofSize: 16, weight: .bold)
    }
    
    func configure(package: Package) {
        deskripsi.text = package.description
    }
    
}

