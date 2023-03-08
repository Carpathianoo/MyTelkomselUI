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
    @IBOutlet weak var homePageButton: UIButton!
        
    
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
        
        animate()
        
        pembayaranBerhasilTitle.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        
        detailContainer.layer.borderColor = UIColor.systemGray4.cgColor
        detailContainer.layer.borderWidth = 1
        detailContainer.layer.cornerRadius = 4
        
        paketInternetTitle.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        
        namaPaket.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        
        paketDesc.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        
        homePageButton.layer.cornerRadius = 4
        homePageButton.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .medium)
    }

    private func animate() {
        UIView.animate(withDuration: 0.4, delay: 0.3, animations: {
            self.outerCircle.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        }) { (finished) in
            UIView.animate(withDuration: 1, animations: {
                self.outerCircle.transform = CGAffineTransform.identity
            })
        }

    }
    
    @IBAction func didTapHomePageButton(_ sender: Any) {
        for controller in self.navigationController!.viewControllers as Array {
            if controller.isKind(of: InternetPackageController.self) {
                self.navigationController!.popToViewController(controller, animated: true)
                break
            }
        }
        
    }

    
    func configure(package: Package) {
        namaPaket.text = package.jenisPaket +  " " + String(format: "%g", package.size) + " GB"
        
        var detailDesc: String = ""
        var index = 0
        
        for item in package.rincianPaket {
            index += 1
            let merged = (item.packageContentValue ?? "") + " " + (item.packageContent ?? "")
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
