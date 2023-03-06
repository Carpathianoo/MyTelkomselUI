//
//  DirumahAjaTableCell.swift
//  MyTelkomselUI
//
//  Created by Adlan Nourindiaz on 06/03/23.
//

import UIKit

class DirumahAjaTableCell: UITableViewCell {

    static let identifier = "DirumahAjaTableCell"
    
    
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

    func dirumahAjaCollectionSetup() {
        dirumahAjaCollection.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            dirumahAjaCollection.topAnchor.constraint(equalTo: contentView.topAnchor),
            dirumahAjaCollection.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            dirumahAjaCollection.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            dirumahAjaCollection.trailingAnchor.constraint(equalTo: contentView.trailingAnchor)
        ])
    }
    
    func setupTableCell() {
        contentView.addSubview(dirumahAjaCollection)
        dirumahAjaCollectionSetup()
        self.selectionStyle = .none
        
        dirumahAjaCollection.delegate = self
        dirumahAjaCollection.dataSource = self
        
    }
}

extension DirumahAjaTableCell: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 8, left: 16, bottom: 8, right: 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: dirumahAjaCollection.frame.width / 1.6, height: dirumahAjaCollection.frame.height / 1.3)
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = dirumahAjaCollection.dequeueReusableCell(withReuseIdentifier: PackageCollectionCell.identifier, for: indexPath) as? PackageCollectionCell else { return UICollectionViewCell() }
        cell.setupCell()
        
        return cell
    }
    
    
    
    
    
}


