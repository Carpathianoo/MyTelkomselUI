//
//  PromoTableCell.swift
//  MyTelkomselUI
//
//  Created by Adlan Nourindiaz on 06/03/23.
//

import UIKit

class PromoTableCell: UITableViewCell {

    static let identifier = "PromoTableCell"
    var promoData: [Promo] = []
    var cellWidth: CGFloat = 0
    
    var promoCollection: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(UINib(nibName: "PromoCollectionCell", bundle: nil), forCellWithReuseIdentifier: PromoCollectionCell.identifier)
        collectionView.layer.masksToBounds = false

        return collectionView
    }()
    
    func promoCollectionSetup() {
        promoCollection.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            promoCollection.topAnchor.constraint(equalTo: contentView.topAnchor),
            promoCollection.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            promoCollection.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            promoCollection.trailingAnchor.constraint(equalTo: contentView.trailingAnchor)
        ])
    }
    
    func setupTableCell(cellWidth: CGFloat) {
        contentView.addSubview(promoCollection)
        promoSeeder()
        promoCollectionSetup()
        self.selectionStyle = .none
        self.cellWidth = cellWidth
        
        promoCollection.delegate = self
        promoCollection.dataSource = self
        
    }

}

extension PromoTableCell: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 8, left: 16, bottom: 8, right: 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: cellWidth, height: cellWidth / 2.3)
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        promoData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = promoCollection.dequeueReusableCell(withReuseIdentifier: PromoCollectionCell.identifier, for: indexPath) as? PromoCollectionCell else { return UICollectionViewCell() }
        
        cell.setupCell(promo: promoData[indexPath.row])
        
        return cell
    }
    
    
    
    
    
}
