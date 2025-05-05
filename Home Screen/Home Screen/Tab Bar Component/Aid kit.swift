//
//  Aid kit.swift
//  Home Screen
//
//  Created by Vernandio Rivaldo on 11/07/23.
//

import SwiftUI

struct AidKit: View {
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.init(Color(red: 0.231, green: 0.476, blue: 0.46))]
    }
    var body: some View {
        VStack {
            
            ScrollView{
                VStack(spacing:20){
                    HStack(spacing:20){
                        AidKitCardView(title: "Gunting", image: "gunting")
                        AidKitCardView(title: "Betadine", image: "betadine")
                    }
                    HStack(spacing:20){
                        AidKitCardView(title: "Obat gatal", image: "gatal")
                        AidKitCardView(title: "Kain kasa", image: "kain")
                    }
                    HStack(spacing:20){
                        AidKitCardView(title: "Peniti", image: "peniti")
                        AidKitCardView(title: "Plester", image: "plester")
                    }
                    HStack(spacing:20){
                        AidKitCardView(title: "Sarung tangan", image: "latex")
                        AidKitCardView(title: "Tisu", image: "tisu")
                    }
                    HStack(spacing:20){
                        AidKitCardView(title: "Masker oksigen cpr", image: "masker")
                        AidKitCardView(title: "Termometer", image: "termometer")
                    }
                    HStack(spacing:20){
                        AidKitCardView(title: "Obat batuk", image: "batuk")
                        AidKitCardView(title: "Alkohol", image: "alkohol")
                    }
                    HStack(spacing:20){
                        AidKitCardView(title: "Pinset", image: "pinset")
                        AidKitCardView(title: "Paracetamol", image: "paracetamol")
                    }
                    HStack(spacing:20){
                        AidKitCardView(title: "Obat mata", image: "mata")
                        AidKitCardView(title: "Salep luka bakar", image: "bakar")
                    }
                }
            }
            Spacer()
                .frame(height: 50)
        }
    }
}

struct AidKit_previews: PreviewProvider {
    static var previews: some View {
        AidKit()
    }
}
