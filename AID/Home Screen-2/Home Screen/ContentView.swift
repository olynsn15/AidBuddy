//
//  ContentView.swift
//  Home Screen
//
//  Created by Vernandio Rivaldo on 07/07/23.
//

import SwiftUI

enum Tabs: String {
    case beranda
    case article
    case aidkit
}

struct ContentView: View {
    @State var selectedTab: Tabs = .beranda
    
    var body: some View {
        NavigationView {
            TabView(selection: $selectedTab){
                Beranda()
                    .tabItem {
                        Label("Beranda", systemImage: "house.fill")
                    }
                    .tag(Tabs.beranda)
                
                Articleview()
                    .tabItem {
                        Label("Article", systemImage: "newspaper.fill")
                    }
                    .tag(Tabs.article)
                
                AidKit()
                    .tabItem {
                        Label("Aid Kits", systemImage: "cross.case.fill")
                    }
                    .tag(Tabs.aidkit)
                
            }.navigationTitle(selectedTab.rawValue.capitalized)
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
