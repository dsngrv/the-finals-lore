//
//  CategoriesView.swift
//  THE FINALS LORE
//
//  Created by Дмитрий Снигирев on 18.03.2024.
//

import Foundation
import SwiftUI

struct CategoriesView: View {
    
    @Binding var titleOn: Bool
    
    var body: some View {
        NavigationView {
            List(Category.data) { category in
                NavigationLink(destination: category.title == "IN-GAME SPONSORS" ?
                               AnyView(SponsorsView(sponsor: Sponsor.data)) : AnyView(CharactersView(character: Character.data))) {
                    CategoryRowView(category: category)
                }
                               .listRowBackground(Color("backgroundColor"))
                               .listRowSeparator(.hidden)
            }
            .background(Color("backgroundColor"))
            .navigationTitle("Lore Categories")
            .listStyle(.plain)
            .scrollIndicators(.hidden)
            .toolbar(titleOn ? .visible : .hidden)
        }
    }

}
