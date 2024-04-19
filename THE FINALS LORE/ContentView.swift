//
//  ContentView.swift
//  THE FINALS LORE
//
//  Created by Дмитрий Снигирев on 17.03.2024.
//

import AVKit
import SwiftUI

struct ContentView: View {
    
    @State private var currentTheme: UIUserInterfaceStyle = .light
    @AppStorage("titleOn") var titleOn = true
    
    var audioPlayer: AVAudioPlayer!
    
    init() {
        setupTabBar()
        setupNavBar()
        let sound = Bundle.main.path(forResource: "the_finals_music", ofType: "mp3")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
            audioPlayer.numberOfLoops = -1
            audioPlayer.play()
            
        } catch {
            print("Ошибка при воспроизведении музыки")
        }
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
