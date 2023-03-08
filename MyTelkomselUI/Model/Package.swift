//
//  PackageModel.swift
//  MyTelkomselUI
//
//  Created by Adlan Nourindiaz on 07/03/23.
//

import Foundation

struct Package {
    
    let size: Float
    let masaAktif: String
    let hargaNormal: Int
    let hargaDiskon: Int
    let isLangganan: Bool
    let isPopular: Bool
    let idDirumahAja: Bool
    let jenisPaket: String
    let description: String
    let rincianPaket: [Rincian]
    
}


struct Rincian {
    
    let packageContent: String?
    let packageContentValue: String?
    
}
