//
//  PackageDetailController.swift
//  MyTelkomselUI
//
//  Created by Adlan Nourindiaz on 06/03/23.
//

import UIKit

class PackageDetailController: UIViewController {
    
    @IBOutlet weak var detailTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupCell()
    }
    
    func setupCell() {
        detailTable.register(UINib(nibName: "HargaTableCell", bundle: nil), forCellReuseIdentifier: HargaTableCell.identifier)
        detailTable.delegate = self
        detailTable.dataSource = self
        
    }
}

extension PackageDetailController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
    
    
}
