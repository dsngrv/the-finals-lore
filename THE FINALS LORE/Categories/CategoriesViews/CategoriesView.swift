//
//  CategoriesView.swift
//  THE FINALS LORE
//
//  Created by Дмитрий Снигирев on 18.03.2024.
//

import Foundation
import SwiftUI

struct CategoriesView: View {
    var body: some View {
        NavigationView {
            List(Categories.data) { category in
                NavigationLink(destination: category.title == "IN-GAME SPONSORS" ?
                               AnyView(SponsorsView(sponsors: Sponsors.data)) : AnyView(CharactersView(characters: Characters.data))) {
                    CategoryRowView(categories: category)
                }
                               .listRowSeparator(.hidden)
            }
            .navigationTitle("Lore Categories")
            .listStyle(.plain)
            .scrollIndicators(.hidden)
        }
    }
}

#Preview {
    CategoriesView()
}
