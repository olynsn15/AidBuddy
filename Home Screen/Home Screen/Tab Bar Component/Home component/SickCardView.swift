//
//  SickCardView.swift
//  Home Screen
//
//  Created by Vernandio Rivaldo on 11/07/23.
//

import SwiftUI

struct SickCardView: View {
    var type: EmergencyType
    @State var isDetailActive: Bool = false
    
    var body: some View {
        NavigationLink(isActive: $isDetailActive) {
            DetailSickView(type: type, isDetailActive: $isDetailActive)
        } label: {
            Text(type.title)
                .fontWeight(.bold)
                .font(.system(size: 20))
                .padding()
                .frame(width: 160, height: 80)
        }
        .foregroundColor(.white)
        .background(Color(red: 0.23, green: 0.472, blue: 0.461))
        .cornerRadius(15)
        .shadow(radius: 10)
    }
}

struct SickCardView_Previews: PreviewProvider {
    static var previews: some View {
        SickCardView(type: .lukaBakar)
    }
}
