//
//  ContentView.swift
//  THE FINALS LORE
//
//  Created by Дмитрий Снигирев on 17.03.2024.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        UITabBar.appearance().unselectedItemTintColor = .systemGray2
    }
    
    var body: some View {
        TabView {
            MainView()
                .tabItem {
                    Label("Main", systemImage: "figure.wave.circle.fill")
                }
            CategoriesView()
                .tabItem {
                    Label("Categories", systemImage: "rectangle.grid.1x2.fill")
                }
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
        .accentColor(Color("backgroundColor"))
    }
}

#Preview {
    ContentView()
}
