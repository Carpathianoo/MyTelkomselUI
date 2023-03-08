//
//  UIColorExtension.swift
//  MyTelkomselUI
//
//  Created by Adlan Nourindiaz on 06/03/23.
//

import Foundation
import UIKit


extension InternetPackageController {
    
    func packageSeeder() {
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

im ad minim veniam, quis nostrud exercitation ull
amco labor
is n
is
i ut aliquip ex ea commodo consequat. Duis aute iru


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
        packageData.append(data3)
        packageData.append(data2)
        packageData.append(data4)
        packageData.append(data5)
    
    }
    
}

extension PromoTableCell {
    
    func promoSeeder() {
        
        let data1 = Promo(image: "omg", nama: "Internet OMG!", desc: "Bisa YouTube dan Sosmed", firstColor: UIColor.red, secondColor: UIColor.purple)
        
        let data2 = Promo(image: "ketengan", nama: "Kuota Ketengan", desc: "Internetan Jadi Murah", firstColor: UIColor.blue, secondColor: UIColor.purple)
        
        promoData.append(data1)
        promoData.append(data2)
    }

}

extension VoucherTableCell {
    
    func voucherSeeder() {
        
        let voucher1 = Voucher(poster: "voucher1", title: "DOUBLE Benefits From DOUBLE UNTUNG")
        let voucher2 = Voucher(poster: "voucher2", title: "Join Undian Berhadiah")
        
        voucherData.append(voucher1)
        voucherData.append(voucher2)
        
    }
    
}
