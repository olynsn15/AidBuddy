//
//  DetailSickViewModel.swift
//  Home Screen
//
//  Created by Vernandio Rivaldo on 17/07/23.
//

import Foundation

class DetailSickViewModel {
    var emergenciesData: [EmergencyItem] = []
    var aidKitData: [EmergencyItem] = []
    
    init() {
        constructEmergenciesData()
        constructAidKitData()
    }
    
    private func constructEmergenciesData() {
        let DaruratLukaBakar: EmergencyItem = EmergencyItem(titleContent: "Segera tekan tombol darurat apabila menunjukkan gejala-gejala berikut:", bulletList: ["Luka bakar terlihat cukup dalam dan melebar pada sebagian besar area kulit, mulai dari tangan, wajah, alat kelamin, dan bagian lain.","Luka bakar terlihat kasar dan kulit tampak hangus.","Terdapat jaringan parut pada luka.","Luka bakar yang disebabkan oleh bahan kimia atau sengatan listrik.", "Mengalami sesak nafas atau tidak sadarkan diri."])
        let DaruratMimisan: EmergencyItem = EmergencyItem(titleContent: "Segera tekan tombol darurat apabila menunjukkan gejala-gejala berikut:", bulletList: ["Mimisan tidak terhenti dengan tekanan","Mimisan Berulang","Mimisan Usia Bayi atau anak 2 tahun","Mimisan karena patah hidung atau cedera dan menyebabkan sesak napas","Mimisan setelah operasi sinus"])
        let DaruratTerkilir: EmergencyItem = EmergencyItem(titleContent: "Segera tekan tombol darurat apabila menunjukkan gejala-gejala berikut:", bulletList: ["Nyeri hebat ketika area yang cedera disentuh atau digerakkan","Memar yang parah","Mati rasa atau kesemutan di area yang cedera","Perubahan bentuk fisik di area yang cedera, seperti bengkok atau patah","Tanda-tanda infeksi, seperti demam","Tidak membaik setelah 5-7 hari"])
        let DaruratLebah: EmergencyItem = EmergencyItem(titleContent: "Segera tekan tombol darurat apabila menunjukkan gejala-gejala berikut:", bulletList: ["Kulit pucat","Pusing","Mual dan muntah","Diare","Muka bengkak","Sulit menelan","Sesak napas","Hilang kesadaran"])
        
        emergenciesData = [
            DaruratLukaBakar,
            DaruratMimisan,
            DaruratTerkilir,
            DaruratLebah
        ]
    }
    
    private func constructAidKitData() {
        let PeralatanLukaBakar: EmergencyItem = EmergencyItem(titleContent: "Peralatan yang dibutuhkan:", bulletList: ["Air dingin", "Perban", "Krim"])
        let PeralatanMimisan: EmergencyItem = EmergencyItem(titleContent:"Peralatan yang dibutuhkan:", bulletList: ["Tissue / Kapas","Tempat duduk","Kompres es batu"])
        let PeralatanTerkilir: EmergencyItem = EmergencyItem(titleContent:"Peralatan yang dibutuhkan:", bulletList: ["Kompres es batu", "Perban elastis","Bantal","Tempat istirahat"])
        let PeralatanLebah: EmergencyItem = EmergencyItem(titleContent:"Peralatan yang dibutuhkan:", bulletList: ["Sabun dan air","Kompres es batu","Obat pereda nyeri","Krim pereda gatal dan iritasi"])
        
        aidKitData = [
            PeralatanLukaBakar,
            PeralatanMimisan,
            PeralatanTerkilir,
            PeralatanLebah
        ]
    }
}
