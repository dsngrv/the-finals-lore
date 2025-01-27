//
//  MoreInfoView.swift
//  THE FINALS LORE
//
//  Created by Дмитрий Снигирев on 16.04.2024.
//

import SwiftUI

struct MoreInfoView: View {
    var place: Place
    
    var body: some View {
        VStack() {
            Spacer()
            Text(place.title)
                .font(.custom("SairaCondensed-Bold", size: 24))
                .padding(.bottom, -8)
                .shadow(color: Color("mainThemeColor"), radius: 5)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
            
            Image(place.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 200)
                .padding(8)
            
            Text(place.description)
                .font(.body)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            Spacer()
        }
        .padding(8)
        .background(Color("secondaryBGColor"))
        .cornerRadius(10)
    }
}

#Preview {
    MoreInfoView(place: Place.data[1])
}
