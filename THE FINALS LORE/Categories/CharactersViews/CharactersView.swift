//
//  CharactersView.swift
//  THE FINALS LORE
//
//  Created by Дмитрий Снигирев on 19.03.2024.
//

import Foundation
import SwiftUI

struct CharactersView: View {
    let character: [Character]
    
    var body: some View {
        List {
            ForEach(character, id: \.id) { character in
                CharactersRowView(character: character)
                    .listRowBackground(Color.clear)
            }
            .listRowSeparator(.hidden)
        }
        .background(Color("backgroundColor"))
        .navigationTitle("Characters")
        .listStyle(.plain)
        .scrollIndicators(.hidden)
    }
}


#Preview {
    CharactersView(character: Character.data)
}
