//
//  CharactersRowView.swift
//  THE FINALS LORE
//
//  Created by Дмитрий Снигирев on 21.03.2024.
//

import Foundation
import SwiftUI

struct CharactersRowView: View {
    let character: Characters
    
    var body: some View {
            VStack {
                Text(character.title)
                    .font(.custom("SairaCondensed-Bold", size: 24))
                    .shadow(color: .red, radius: 5)
                    .padding(.bottom, -8)
                    
                character.image
                    .resizable()
                    .frame(width: 300, height: 300)
                    .cornerRadius(8)
                    .padding(8)

                Text(character.description)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    .padding(.top, 0)
            }
        .padding(8)
        .background()
        .cornerRadius(10)
        .shadow(color: .red, radius: 5)
    }
}

#Preview {
    CharactersRowView(character: Characters.data[4])
}
