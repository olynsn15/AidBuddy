//
//  SickCardView.swift
//  Home Screen
//
//  Created by Vernandio Rivaldo on 11/07/23.
//
import Foundation
import SwiftUI
struct AidKitCardView: View {
    var title: String
    var image: String
    
    var body: some View {
            VStack{
                ZStack {
                    Image(image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(15)
                        .frame(width: 125, height: 65)
                        .padding(.bottom, 20)
                    Text (title)
                        .frame(height: 100)
                        .multilineTextAlignment(.center)
                        .padding(.top, 90)
                        .font(.system(size: 20))
                }
            }
            .frame(maxWidth: 130, maxHeight: 130)
            .padding()
            .background(Rectangle().foregroundColor(Color(red: 0.926, green: 0.966, blue: 0.965))
                .cornerRadius(15))
    }
}
struct AidKitCardView_Previews: PreviewProvider {
    static var previews: some View {
        AidKitCardView(title: "tisu bebas alkohol", image: "gunting")
    }
}
