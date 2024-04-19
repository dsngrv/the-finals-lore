//
//  CharactersRowView.swift
//  THE FINALS LORE
//
//  Created by Дмитрий Снигирев on 21.03.2024.
//

import Foundation
import SwiftUI

struct CharactersRowView: View {
    let character: Character
    
    var body: some View {
            VStack {
                Text(character.title)
                    .font(.custom("SairaCondensed-Bold", size: 24))
                    .shadow(color: Color("mainThemeColor"), radius: 5)
                    .padding(.bottom, -8)
                    .foregroundColor(.white)
                
                character.image
                    .resizable()
                    .frame(width: 300, height: 300)
                    .cornerRadius(8)
                    .padding(8)

                Text(character.description)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    .padding(.top, 0)
                    .foregroundColor(.white)
            }
        .padding(8)
        .background(Color("backgroundColor"))
        .cornerRadius(10)
        .shadow(color: Color("mainThemeColor"), radius: 5)
    }
}

#Preview {
    CharactersRowView(character: Character.data[4])
}
