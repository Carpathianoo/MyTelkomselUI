//
//  PackageDetailController.swift
//  MyTelkomselUI
//
//  Created by Adlan Nourindiaz on 06/03/23.
//

import UIKit

enum DetailSections: Int {
    
    case harga = 0
    case masaAktif = 1
    case rincianTitle = 2
    case rincian = 3
    case deskripsi = 4
    
}

class PackageDetailController: UIViewController {
    
    @IBOutlet weak var detailTable: UITableView!
    @IBOutlet weak var beliSekarangButton: UIButton!
    
    var package: Package?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupCell()
    }
    
    func setupCell() {
        detailTable.register(UINib(nibName: "HargaTableCell", bundle: nil), forCellReuseIdentifier: HargaTableCell.identifier)
        detailTable.register(UINib(nibName: "MasaAktifTableCell", bundle: nil), forCellReuseIdentifier: MasaAktifTableCell.identifier)
        detailTable.register(UINib(nibName: "RincianPaketTitleTableCell", bundle: nil), forCellReuseIdentifier: RincianPaketTitleTableCell.identifier)
        detailTable.register(UINib(nibName: "RincianPaketTableCell", bundle: nil), forCellReuseIdentifier: RincianPaketTableCell.identifier)
        detailTable.register(UINib(nibName: "DeskripsiPaketCell", bundle: nil), forCellReuseIdentifier: DeskripsiPaketCell.identifier)
        
        detailTable.delegate = self
        detailTable.dataSource = self
        
        beliSekarangButton.layer.cornerRadius = 4
        
    }
    
    
    @IBAction func didBeliSekarangButtonPressed(_ sender: Any) {
        let vc = SuccessfulTransactionController()
        vc.package = self.package
        self.navigationController?.pushViewController(vc, animated: true)

        
    }
    
}

extension PackageDetailController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        let tableSections = DetailSections(rawValue: section)
        
        switch tableSections {
        case .rincian:
            return package?.rincianPaket.count ?? 0
        default:
            return 1
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        5
    }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let section = DetailSections(rawValue: indexPath.section)
        
        guard let unwrappedPackage = self.package else { return UITableViewCell() }
       // print(unwrappedPackage)
        
        switch section {
        case .harga:
            guard let cell = detailTable.dequeueReusableCell(withIdentifier: HargaTableCell.identifier, for: indexPath) as? HargaTableCell else { return UITableViewCell() }
            cell.setupCell()
            
            cell.configure(package: unwrappedPackage)
            return cell
            
        case .masaAktif:
            guard let cell = detailTable.dequeueReusableCell(withIdentifier: MasaAktifTableCell.identifier, for: indexPath) as? MasaAktifTableCell else { return UITableViewCell() }
            cell.configure(package: unwrappedPackage)
            return cell
            
        case .rincianTitle:
            guard let cell = detailTable.dequeueReusableCell(withIdentifier: RincianPaketTitleTableCell.identifier, for: indexPath) as? RincianPaketTitleTableCell else { return UITableViewCell() }
            return cell

        case .rincian:
            guard let cell = detailTable.dequeueReusableCell(withIdentifier: RincianPaketTableCell.identifier, for: indexPath) as? RincianPaketTableCell else { return UITableViewCell() }            
            cell.configure(rincianPaket: unwrappedPackage.rincianPaket[indexPath.row])
            return cell
            
        case .deskripsi:
            guard let cell = detailTable.dequeueReusableCell(withIdentifier: DeskripsiPaketCell.identifier, for: indexPath) as? DeskripsiPaketCell else { return UITableViewCell() }
            cell.configure(package: unwrappedPackage)
            return cell



        default:
            return UITableViewCell()
            
        }
        
        
        
        
    }
    
    
    
    
}
