//
//  PopularTableCell.swift
//  MyTelkomselUI
//
//  Created by Adlan Nourindiaz on 06/03/23.
//

import UIKit

class PopularTableCell: UITableViewCell {

    static let identifier = "PopularTableCell"
    
    var popularCollection: UICollectionView = {
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

   func popularCollectionSetup() {
       popularCollection.translatesAutoresizingMaskIntoConstraints = false
       NSLayoutConstraint.activate([
        popularCollection.topAnchor.constraint(equalTo: contentView.topAnchor),
        popularCollection.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
        popularCollection.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
        popularCollection.trailingAnchor.constraint(equalTo: contentView.trailingAnchor)
       ])
   }
   
   func setupTableCell() {
       contentView.addSubview(popularCollection)
       popularCollectionSetup()
       self.selectionStyle = .none
       
       popularCollection.delegate = self
       popularCollection.dataSource = self
       
   }

}

extension PopularTableCell: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 8, left: 16, bottom: 8, right: 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: popularCollection.frame.width / 1.6, height: popularCollection.frame.height / 1.3)
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = popularCollection.dequeueReusableCell(withReuseIdentifier: PackageCollectionCell.identifier, for: indexPath) as? PackageCollectionCell else { return UICollectionViewCell() }
        cell.setupCell()
        
        return cell
    }
    
    
    
    
    
}

