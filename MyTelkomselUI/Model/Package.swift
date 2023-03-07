//
//  PackageModel.swift
//  MyTelkomselUI
//
//  Created by Adlan Nourindiaz on 07/03/23.
//

import Foundation

struct Package {
    
    let size: Int
    let masaAktif: String
    let hargaNormal: Int
    let hargaDiskon: Int
    let isLangganan: Bool
    let isPopular: Bool
    let idDirumahAja: Bool
    let jenisPaket: String
    let detail: [Detail]
    
    
}

struct Detail {
    
    let rincianPaket: [Rincian]
    let description: String
    
}

struct Rincian {
    
    let packageContent: String?
    let packageContentValue: String?
    
}
