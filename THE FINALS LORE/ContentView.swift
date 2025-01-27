//
//  ContentView.swift
//  THE FINALS LORE
//
//  Created by Дмитрий Снигирев on 17.03.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var currentTheme: UIUserInterfaceStyle = .light
    @AppStorage("titleOn") var titleOn = true
        
    init() {
        setupTabBar()
        setupNavBar()
    }
    
    var body: some View {
        TabView {
            MainView()
                .tabItem {
                    Label("Main", systemImage: "figure.wave.circle.fill")
                }
            CategoriesView(titleOn: $titleOn)
                .tabItem {
                    Label("Categories", systemImage: "rectangle.grid.1x2.fill")
                }
            PlacesView()
                .tabItem {
                    Label("Places", systemImage: "globe")
            }
            SettingsView(titleOn: $titleOn)
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
        .accentColor(Color("mainThemeColor"))
    }
}

#Preview {
    ContentView()
}
