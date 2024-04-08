//
//  THE_FINALS_LOREApp.swift
//  THE FINALS LORE
//
//  Created by Дмитрий Снигирев on 17.03.2024.
//

import SwiftUI

@main
struct THE_FINALS_LOREApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .preferredColorScheme(.dark)
/*                
                Определение подлинного названия шрифта на случай, если название файла отличается
                .onAppear() {
                    for family in UIFont.familyNames.sorted() {
                        let names = UIFont.fontNames(forFamilyName: family)
                        print("Family: \(family) Font names: \(names)")
                    }
                }
 */
        }
    }
}
