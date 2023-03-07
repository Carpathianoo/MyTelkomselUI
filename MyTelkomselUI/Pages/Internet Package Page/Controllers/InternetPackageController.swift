//
//  InternetPackageController.swift
//  MyTelkomselUI
//
//  Created by Adlan Nourindiaz on 06/03/23.
//

import UIKit

protocol InternetPackageControllerDelegate {
    
    func moveToDetailPage(package: Package)
    func seeder()
    
}

enum Sections: Int {
    
    case promo = 0
    case langgananTitle = 1
    case langganan = 2
    case popularTitle = 3
    case popular = 4
    case voucherTitle = 5
    case voucher = 6
    case dirumahAjaTitle = 7
    case dirumahAja = 8
}

class InternetPackageController: UIViewController{

    @IBOutlet weak var internetPackageTable: UITableView!
    
    let headerTitles = ["Langganan Kamu", "Popular", "Cari Voucher, Yuk!", "Belajar #dirumahaja"]
    
    var packageData: [Package] = []
    
    var delegate: InternetPackageControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Internet Packages"
        delegate = self
        seeder()
        setupCell()
    }

    func setupCell() {
        internetPackageTable.register(UINib(nibName: "HeaderCell", bundle: nil), forCellReuseIdentifier: HeaderCell.identifier)
        
        internetPackageTable.register(PromoTableCell.self, forCellReuseIdentifier: PromoTableCell.identifier)
        internetPackageTable.register(LanggananTableCell.self, forCellReuseIdentifier: LanggananTableCell.identifier)
        internetPackageTable.register(PopularTableCell.self, forCellReuseIdentifier: PopularTableCell.identifier)
        internetPackageTable.register(VoucherTableCell.self, forCellReuseIdentifier: VoucherTableCell.identifier)
        internetPackageTable.register(DirumahAjaTableCell.self, forCellReuseIdentifier: DirumahAjaTableCell.identifier)
        
        internetPackageTable.delegate = self
        internetPackageTable.dataSource = self
        internetPackageTable.backgroundColor = .white
    }

    

}
extension InternetPackageController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        9
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        let section = Sections(rawValue: indexPath.section)
        let packageCellHeight:CGFloat = 140
        let voucherCellHeight:CGFloat = 180
        
        switch section {
        case .promo:
            return packageCellHeight
        case .langganan:
            return packageCellHeight
        case .popular:
            return packageCellHeight
        case .voucher:
            return voucherCellHeight
        case .dirumahAja:
            return packageCellHeight
        default:
            return internetPackageTable.rowHeight
        }
    }

    
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let headerCell = internetPackageTable.dequeueReusableCell(withIdentifier: HeaderCell.identifier) as? HeaderCell else { return UITableViewCell() }
        
        let section = Sections(rawValue: indexPath.section)
        
        switch section {
        case .promo:
            guard let cell = internetPackageTable.dequeueReusableCell(withIdentifier: PromoTableCell.identifier, for: indexPath) as? PromoTableCell else { return UITableViewCell() }

            cell.setupTableCell()
            
            return cell
        case .langgananTitle:
            headerCell.setupHeaderCell(title: headerTitles[0], hideShowAllButton: true)
            return headerCell
            
        case .langganan:
            guard let cell = internetPackageTable.dequeueReusableCell(withIdentifier: LanggananTableCell.identifier, for: indexPath) as? LanggananTableCell else { return UITableViewCell() }
            cell.setupTableCell(packages: packageData)
            cell.delegate = self
            return cell
            
        case .popularTitle:
            headerCell.setupHeaderCell(title: headerTitles[1], hideShowAllButton: true)
            return headerCell
            
        case .popular:
            guard let cell = internetPackageTable.dequeueReusableCell(withIdentifier: PopularTableCell.identifier, for: indexPath) as? PopularTableCell else { return UITableViewCell() }
            cell.setupTableCell(packages: packageData)
            cell.delegate = self
            return cell
            
        case .voucherTitle:
            headerCell.setupHeaderCell(title: headerTitles[2], hideShowAllButton: false)
            return headerCell
            
        case .voucher:
            guard let cell = internetPackageTable.dequeueReusableCell(withIdentifier: VoucherTableCell.identifier, for: indexPath) as? VoucherTableCell else { return UITableViewCell() }
            cell.setupTableCell()
            return cell
            
        case .dirumahAjaTitle:
            headerCell.setupHeaderCell(title: headerTitles[3], hideShowAllButton: true)
            return headerCell

            
        case .dirumahAja:
            guard let cell = internetPackageTable.dequeueReusableCell(withIdentifier: DirumahAjaTableCell.identifier, for: indexPath) as? DirumahAjaTableCell else { return UITableViewCell() }
            cell.setupTableCell(packages: packageData)
            cell.delegate = self
            return cell
            
        default:
            return UITableViewCell()
        }
    }

}

extension InternetPackageController: InternetPackageControllerDelegate {

    func moveToDetailPage(package: Package) {
        let vc = PackageDetailController()
        vc.package = package
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func seeder() {
        let data1 = Package(size: 14, masaAktif: "30 hari", hargaNormal: 99000, hargaDiskon: 93000, isLangganan: true, isPopular: true, idDirumahAja: false, jenisPaket: "Internet OMG", description:
"""
2.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
""", rincianPaket:
                    [
                        Rincian(packageContent: "Internet", packageContentValue: "4.5 GB"),
                        Rincian(packageContent: "OMG", packageContentValue: "2 GB")
                    ])
        
        let data2 = Package(size: 8, masaAktif: "15 hari", hargaNormal: 70000, hargaDiskon: 12357, isLangganan: true, isPopular: true, idDirumahAja: false, jenisPaket: "Internet Wow", description:
"""
2.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut en

im ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute iru


re dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
""", rincianPaket:
                    [
                        Rincian(packageContent: "Internet", packageContentValue: "4.5 GB"),
                        Rincian(packageContent: "OMG", packageContentValue: "2 GB"),
                        Rincian(packageContent: "SMS Tsel", packageContentValue: "60 SMS")
                    ])
        
        
        let data3 = Package(size: 5, masaAktif: "7 hari", hargaNormal: 25000, hargaDiskon: 21000, isLangganan: false, isPopular: true, idDirumahAja: false, jenisPaket: "Internet OMG", description:
"""
2.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
""", rincianPaket:
                    [
                        Rincian(packageContent: "Internet", packageContentValue: "4.5 GB"),
                        Rincian(packageContent: "OMG", packageContentValue: "2 GB"),
                        Rincian(packageContent: "SMS Tsel", packageContentValue: "60 SMS"),
                        Rincian(packageContent: "SMS Tsel", packageContentValue: "60 SMS")

                    ])
        
        let data4 = Package(size: 2, masaAktif: "7 hari", hargaNormal: 0, hargaDiskon: 0, isLangganan: false, isPopular: false, idDirumahAja: true, jenisPaket: "Dirumah Aja", description:
"""
2.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
""", rincianPaket:
                    [
                        Rincian(packageContent: "Internet", packageContentValue: "4.5 GB"),
                        Rincian(packageContent: "OMG", packageContentValue: "2 GB"),
                        Rincian(packageContent: "SMS Tsel", packageContentValue: "60 SMS")
                    ])
        
        let data5 = Package(size: 100, masaAktif: "2 Bulan", hargaNormal: 0, hargaDiskon: 0, isLangganan: false, isPopular: false, idDirumahAja: true, jenisPaket: "Belajar Oi!", description:
"""
2.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
""", rincianPaket:
                    [
                        Rincian(packageContent: "Internet", packageContentValue: "4.5 GB"),
                        Rincian(packageContent: "OMG", packageContentValue: "2 GB"),
                        Rincian(packageContent: "SMS Tsel", packageContentValue: "60 SMS"),
                        Rincian(packageContent: "OMG", packageContentValue: "2 GB"),
                        Rincian(packageContent: "SMS Tsel", packageContentValue: "60 SMS")

                    ])
        
        packageData.append(data1)
        packageData.append(data2)
        packageData.append(data3)
        packageData.append(data4)
        packageData.append(data5)
    
    }

}
