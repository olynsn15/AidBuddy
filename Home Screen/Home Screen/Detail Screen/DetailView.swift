//
//  DetailView.swift
//  Home Screen
//
//  Created by Vernandio Rivaldo on 11/07/23.
//

import SwiftUI

struct DetailView: View {
    var title: String
    var description: String
    
    var body: some View {
        VStack {
            Text(description)
            Button {
               print ("Test")
            }label: {
                Image("map")
                    .resizable()
                    .frame(width: 200, height: 200)
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationTitle(title)
        .toolbar(content: {
            ToolbarItem(placement: .navigationBarLeading) {
                BackButtonView()
            }
        })
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(
            title: "Test",
            description: "Halo"
        )
    }
}
