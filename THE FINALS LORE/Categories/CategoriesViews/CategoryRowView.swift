//
//  CategoryRowView.swift
//  THE FINALS LORE
//
//  Created by Дмитрий Снигирев on 18.03.2024.
//

import Foundation
import SwiftUI

struct CategoryRowView: View {
    var category: Category
    
    @Environment(\.colorScheme) var colorScheme
    @State private var currentImageName: String = ""
    
    var body: some View {
        
        let image = category.currentImageName
        
        VStack {
            Text(category.title)
                .font(.custom("SairaCondensed-Bold", size: 24))
                .padding(.bottom, -8)
                .shadow(color: Color("mainThemeColor"), radius: 5)
                .foregroundColor(.white)
        
            Image(image)
                .resizable()
                .scaledToFit()
                .frame(height: 200)
                .cornerRadius(10.0)
                .padding(8)
                .onChange(of: colorScheme) { _ in
                                currentImageName = category.currentImageName
                            }

            Text(category.description)
                .padding(.top, 0)
                .padding(.leading, 16)
                .padding(.trailing, 16)
                .foregroundColor(.white)
        }
        .padding(8)
        .background(Color("backgroundColor"))
        .cornerRadius(10)
        .shadow(color: Color("mainThemeColor"), radius: 5)
    }
    
}

#Preview {
    CategoryRowView(category: Category.data[1])
}
