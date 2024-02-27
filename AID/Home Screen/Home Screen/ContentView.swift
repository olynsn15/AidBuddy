//
//  ContentView.swift
//  Home Screen
//
//  Created by Vernandio Rivaldo on 07/07/23.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab: Int = 0
    var body: some View {
        NavigationView {
            TabView(selection: $selectedTab){
                Beranda()
                    .tabItem {
                        Label("Beranda", systemImage: "house.fill")
                    }
                    .tag(0)
                
                Articleview()
                    .tabItem {
                        Label("Panduan", systemImage: "newspaper.fill")
                    }
                    .tag(1)
                
                AidKit()
                    .tabItem {
                        Label("Aid Kits", systemImage: "cross.case.fill")
                    }
                    .tag(2)
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


// To enable swipe back
extension UINavigationController: UIGestureRecognizerDelegate {
    override open func viewDidLoad() {
        super.viewDidLoad()
        interactivePopGestureRecognizer?.delegate = self
    }
    public func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        return viewControllers.count > 1
    }
}
