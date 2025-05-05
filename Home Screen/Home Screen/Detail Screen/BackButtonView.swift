//
//  BackButtonView.swift
//  Home Screen
//
//  Created by Vernandio Rivaldo on 11/07/23.
//

import SwiftUI

struct BackButtonView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        Button(action: {
            presentationMode.wrappedValue.dismiss()
        }) {
            Image(systemName: "chevron.left")
                .resizable()
                .imageScale(.large)
                .fontWeight(.bold)
                .foregroundColor(Color(red: 0.23, green: 0.472, blue: 0.461))
        }
    }
}

struct BackButtonView_Previews: PreviewProvider {
    static var previews: some View {
        BackButtonView()
    }
}
