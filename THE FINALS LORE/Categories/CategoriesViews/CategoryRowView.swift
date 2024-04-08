//
//  CategoryRowView.swift
//  THE FINALS LORE
//
//  Created by Дмитрий Снигирев on 18.03.2024.
//

import Foundation
import SwiftUI

struct CategoryRowView: View {
    var categories: Categories
    
    var body: some View {
        
        VStack {
            Text(categories.title)
                .font(.custom("SairaCondensed-Bold", size: 24))
                .padding(.bottom, -8)
                .shadow(color: .red, radius: 5)
        

            categories.image
                .resizable()
                .scaledToFit()
                .frame(height: 200)
                .cornerRadius(10.0)
                .padding(8)


            Text(categories.description)
                .padding(.top, 0)
                .padding(.leading, 16)
                .padding(.trailing, 16)
        }
        .padding(8)
        .background()
        .cornerRadius(10)
        .shadow(color: .red, radius: 5)
    }
}

#Preview {
    CategoryRowView(categories: Categories.data[1])
}
