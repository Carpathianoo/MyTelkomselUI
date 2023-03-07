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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
    }

    func setupView() {
        outerCircle.layer.cornerRadius = outerCircle.frame.height / 2
        
        innerCircle.layer.cornerRadius = innerCircle.frame.height / 2
        
    }








}
