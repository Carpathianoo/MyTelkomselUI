//
//  ViewController.swift
//  MyTelkomselUI
//
//  Created by Adlan Nourindiaz on 06/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var movePageButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let vc = InternetPackageController()
        self.navigationController?.pushViewController(vc, animated: true)
        movePageButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        movePageButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        
    }


    @IBAction func didButtonClicked(_ sender: Any) {
        let vc = InternetPackageController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
}


