//
//  Extentions.swift
//  THE FINALS LORE
//
//  Created by Дмитрий Снигирев on 04.04.2024.
//

import Foundation
import SwiftUI


extension ContentView {
    func setupTabBar() {
        UITabBar.appearance().unselectedItemTintColor = .systemGray2
        UITabBar.appearance().barTintColor = UIColor(named: "backgroundColor")
        UITabBar.appearance().backgroundColor = UIColor(named: "backgroundColor")
        UITabBar.appearance().layer.borderColor = UIColor.clear.cgColor
        UITabBar.appearance().clipsToBounds = true
    }
}

extension ContentView {
    func setupNavBar() {
        let navigationBarAppearance = UINavigationBarAppearance()
        navigationBarAppearance.titleTextAttributes = [
                NSAttributedString.Key.foregroundColor : UIColor.white
            ]
        navigationBarAppearance.largeTitleTextAttributes = [
            NSAttributedString.Key.foregroundColor : UIColor.white
        ]
        navigationBarAppearance.backgroundColor = UIColor(named: "backgroundColor")
            UINavigationBar.appearance().standardAppearance = navigationBarAppearance
            UINavigationBar.appearance().compactAppearance = navigationBarAppearance
            UINavigationBar.appearance().scrollEdgeAppearance = navigationBarAppearance
    }
}
