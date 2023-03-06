//
//  VoucherTableCell.swift
//  MyTelkomselUI
//
//  Created by Adlan Nourindiaz on 06/03/23.
//

import UIKit

class VoucherTableCell: UITableViewCell {

    static let identifier = "VoucherTableCell"
    
    
    var voucherCollection: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(UINib(nibName: "VoucherCollectionCell", bundle: nil), forCellWithReuseIdentifier: VoucherCollectionCell.identifier)
        collectionView.layer.masksToBounds = false
        return collectionView
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func voucherCollectionSetup() {
        voucherCollection.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            voucherCollection.topAnchor.constraint(equalTo: contentView.topAnchor),
            voucherCollection.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            voucherCollection.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            voucherCollection.trailingAnchor.constraint(equalTo: contentView.trailingAnchor)
        ])
    }
    
    func setupTableCell() {
        contentView.addSubview(voucherCollection)
        voucherCollectionSetup()
        self.selectionStyle = .none
        
        voucherCollection.delegate = self
        voucherCollection.dataSource = self
        
    }
}

extension VoucherTableCell: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 16, bottom: 8, right: 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: voucherCollection.frame.width / 1.5, height: voucherCollection.frame.height / 1.1)
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = voucherCollection.dequeueReusableCell(withReuseIdentifier: VoucherCollectionCell.identifier, for: indexPath) as? VoucherCollectionCell else { return UICollectionViewCell() }
        cell.setupCell()
        
        return cell
    }
    
    
    
    
    
}


