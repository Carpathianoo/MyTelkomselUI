//
//  SuccessfulTransactionController.swift
//  MyTelkomselUI
//
//  Created by Adlan Nourindiaz on 07/03/23.
//

import UIKit

class SuccessfulTransactionController: UIViewController {

    @IBOutlet weak var outerCircle: UIView!
    @IBOutlet weak var innerCircle: UIView!
    @IBOutlet weak var pembayaranBerhasilTitle: UILabel!
    @IBOutlet weak var pembayaranBerhasilDesc: UILabel!
    @IBOutlet weak var detailContainer: UIView!
    @IBOutlet weak var paketInternetTitle: UILabel!
    @IBOutlet weak var namaPaket: UILabel!
    @IBOutlet weak var paketDesc: UILabel!
    
    var package: Package?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
        
        guard let unwrappedPackage = self.package else { return }
        
        configure(package: unwrappedPackage)
    }

    func setupView() {
        outerCircle.layer.cornerRadius = outerCircle.frame.height / 2
        
        innerCircle.layer.cornerRadius = innerCircle.frame.height / 2
        
    }

    func configure(package: Package) {
        namaPaket.text = "\(package.jenisPaket) \(package.size) GB"
        
        var detailDesc: String = ""
        var index = 0
        
        for item in package.rincianPaket {
            
            index += 1
            
            let merged = (item.packageContentValue ?? "") + " " + (item.packageContent ?? "")
            
            print("index: \(index) --- \(package.rincianPaket.count)")
            
            if index == package.rincianPaket.count {
                detailDesc = detailDesc + merged
            } else {
                detailDesc = detailDesc + merged + " + "
            }
            
        }
        
        print(detailDesc)
        paketDesc.text = detailDesc
    }







}
