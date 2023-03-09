//
//  DirumahAjaTableCell.swift
//  MyTelkomselUI
//
//  Created by Adlan Nourindiaz on 06/03/23.
//

import UIKit

class DirumahAjaTableCell: UITableViewCell {

    static let identifier = "DirumahAjaTableCell"
    
    var delegate: InternetPackageControllerDelegate?

    var packageData: [Package] = []
    var cellWidth: CGFloat = 0
    
    var dirumahAjaCollection: UICollectionView = {
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

    private func dirumahAjaCollectionSetup() {
        dirumahAjaCollection.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            dirumahAjaCollection.topAnchor.constraint(equalTo: contentView.topAnchor),
            dirumahAjaCollection.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            dirumahAjaCollection.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            dirumahAjaCollection.trailingAnchor.constraint(equalTo: contentView.trailingAnchor)
        ])
    }
    
    func setupTableCell(packages: [Package], cellWidth: CGFloat) {
        self.packageData = packages.filter { $0.idDirumahAja }
        contentView.addSubview(dirumahAjaCollection)
        dirumahAjaCollectionSetup()
        self.cellWidth = cellWidth
        self.selectionStyle = .none
        
        dirumahAjaCollection.delegate = self
        dirumahAjaCollection.dataSource = self
        
    }
}

extension DirumahAjaTableCell: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: -8, left: 16, bottom: 8, right: 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: cellWidth, height: cellWidth / 2.1)
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return packageData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = dirumahAjaCollection.dequeueReusableCell(withReuseIdentifier: PackageCollectionCell.identifier, for: indexPath) as? PackageCollectionCell else { return UICollectionViewCell() }
        cell.setupCell()
        cell.configure(model: packageData[indexPath.row])
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.delegate?.moveToDetailPage(package: packageData[indexPath.row])
    }

    
    
    
}


