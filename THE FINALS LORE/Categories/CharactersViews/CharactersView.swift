//
//  CharactersView.swift
//  THE FINALS LORE
//
//  Created by Дмитрий Снигирев on 19.03.2024.
//

import Foundation
import SwiftUI

struct CharactersView: View {
    let characters: [Characters]
    
    var body: some View {
        List {
            ForEach(characters, id: \.id) { character in
                CharactersRowView(character: character)
                    .listRowBackground(Color.clear)
            }
            .navigationTitle("Characters")
            .listStyle(.plain)
            .listRowSeparator(.hidden)
        }
        .scrollIndicators(.hidden)
    }
}

#Preview {
    CharactersView(characters: Characters.data)
}
