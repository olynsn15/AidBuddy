//
//  ContentView.swift
//  Home Screen
//
//  Created by Vernandio Rivaldo on 07/07/23.
//

import SwiftUI

struct Beranda: View {
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.init(Color(red: 0.231, green: 0.476, blue: 0.46))]
    }
    var body: some View {
        VStack {
            
            VStack(spacing: 30) { //penyakit menu
                HStack(spacing: 30) {
                    SickCardView(type: .terkilir)
                    
                    SickCardView(type: .lukaBakar)
                }
                
                HStack(spacing: 30) {
                    SickCardView(type: .mimisan)
                    
                    SickCardView(type: .TersengatLebah)
                    
                }
                
            }
            
            Group { //rumah sakit terdekat (detect location API)
                Text("Rumah sakit terdekat")
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 0.231, green: 0.476, blue: 0.46))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.system(size: 30))
                    .padding(.leading, 25.0)
                
                ZStack{
                    Button(action: {guard let number = URL(string: "https://www.google.com/maps/search/nearest+hospital") else { return }
                        UIApplication.shared.open(number)}) {
                            ZStack {
                                Image("map")
                                    .resizable()
                                    .frame(width: 350, height: 200)
                                    .blur(radius: 1)
                                    .cornerRadius(20)
                                Text ("Click to view")
                                    .foregroundColor(.black)
                                    .fontWeight(.bold)
                                    .font(.system(size: 30))
                            }
                        }
                }
                
                Spacer()
            }
            
            Button(action: {guard let number = URL(string: "tel://" + "112") else { return }
                UIApplication.shared.open(number)}) {
                    Image(systemName: "phone.fill")
                        .padding(.leading, 80)
                        .imageScale(.large)
                    Text("DARURAT")
                        .padding(.trailing, 70)
                        .frame(width: 230, height: 60)
                        .font(.system(size: 30))
                }
                .foregroundColor(.white)
                .fontWeight(.bold)
                .background(Color(red: 0.882, green: 0.138, blue: 0.003))
                .cornerRadius(60)
            Spacer()
                .frame(height: 30)
        }
    }
}

struct Beranda_Previews: PreviewProvider {
    static var previews: some View {
        Beranda()
    }
}

