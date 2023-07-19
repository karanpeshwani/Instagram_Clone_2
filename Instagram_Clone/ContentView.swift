//
//  ContentView.swift
//  Instagram_Clone
//
//  Created by KARAN on 29/06/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedTab: Int = 2
    
    var body: some View {
        TabView (selection: $selectedTab){
            HomePage()
                .tabItem {
                    Label("", systemImage: "house")
                }
                .tag(1)
            Examples()
                .tabItem {
                    Label("", systemImage: "magnifyingglass")
                }
                .tag(2)
            Text("3 rd")
                .tabItem {
                    Label("", systemImage: "plus.app")
                }
                .tag(3)
            Text("4 th")
                .tabItem {
                    Image("instagram-reels-icon")
                        .renderingMode(.template)
                }
                .tag(4)
            ProfilePage()
                .tabItem {
                    Label("", systemImage: "person.crop.circle.fill")
                }
                .tag(5)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
