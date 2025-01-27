//
//  PlaceInfoView.swift
//  THE FINALS LORE
//
//  Created by Дмитрий Снигирев on 16.04.2024.
//

import SwiftUI

struct PlaceInfoView: View {
    
    var place: Place?
    
    @State private var showMoreInfo = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Image(place?.imageName ?? "nama_tama")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100)
                    .cornerRadius(10)
                    .shadow(color: Color("mainThemeColor"), radius: 5)
                
                if let place = place {
                    VStack(spacing: 10) {
                        Text(place.title)
                            .font(.custom("SairaCondensed-Bold", size: 24))
                            .padding(.top, -8)
                            .shadow(color: Color("mainThemeColor"), radius: 5)
                            .foregroundColor(.white)
                        
                        Button(action: {
                            showMoreInfo.toggle()
                        }) {
                            Text("Learn more")
                                .foregroundColor(.white)
                                
                        }
                        .sheet(isPresented: $showMoreInfo) {
                            MoreInfoView(place: place)
                                .ignoresSafeArea()
                        }
                    }
                } else {
                    Text("Select a place to see details")
                        .foregroundColor(Color("mainThemeColor"))
                }
            }
        }
        .padding(20)
        .background(Color("secondaryBGColor"))
        .cornerRadius(10)
        .shadow(color: Color("mainThemeColor"), radius: 5)
    }
}

#Preview {
    PlaceInfoView(place: Place.data[1])
}
