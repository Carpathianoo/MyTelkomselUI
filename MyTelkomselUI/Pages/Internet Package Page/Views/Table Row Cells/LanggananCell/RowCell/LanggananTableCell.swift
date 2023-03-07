//
//  LanggananTableCell.swift
//  MyTelkomselUI
//
//  Created by Adlan Nourindiaz on 06/03/23.
//

import UIKit

class LanggananTableCell: UITableViewCell {

    static let identifier = "LanggananTableCell"
    
    var delegate: InternetPackageControllerDelegate?
    
    var packageData: [Package] = []
    
    var langgananCollection: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(UINib(nibName: "PackageCollectionCell", bundle: nil), forCellWithReuseIdentifier: PackageCollectionCell.identifier)
        collectionView.layer.masksToBounds = false
        return collectionView
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

   func langgananCollectionSetup() {
       langgananCollection.translatesAutoresizingMaskIntoConstraints = false
       NSLayoutConstraint.activate([
        langgananCollection.topAnchor.constraint(equalTo: contentView.topAnchor),
        langgananCollection.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
        langgananCollection.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
        langgananCollection.trailingAnchor.constraint(equalTo: contentView.trailingAnchor)
       ])
   }
   
    func setupTableCell(packages: [Package]) {
       self.packageData = packages.filter { $0.isLangganan }
       contentView.addSubview(langgananCollection)
       langgananCollectionSetup()
       self.selectionStyle = .none
       
       langgananCollection.delegate = self
       langgananCollection.dataSource = self
       
   }
    
    
}


extension LanggananTableCell: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: -15, left: 16, bottom: 0, right: 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: langgananCollection.frame.width / 1.6, height: langgananCollection.frame.height / 1.2)
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return packageData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = langgananCollection.dequeueReusableCell(withReuseIdentifier: PackageCollectionCell.identifier, for: indexPath) as? PackageCollectionCell else { return UICollectionViewCell() }
        cell.setupCell()
        cell.configure(model: packageData[indexPath.row])
        
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.delegate?.moveToDetailPage(package: packageData[indexPath.row])
    }
    
    
    
    
}
