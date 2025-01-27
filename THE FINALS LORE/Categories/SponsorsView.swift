//
//  SponsorsView.swift
//  THE FINALS LORE
//
//  Created by Дмитрий Снигирев on 18.03.2024.
//

import Foundation
import SwiftUI

struct SponsorsView: View {
    let sponsor: [Sponsor]
    
    let columns: [GridItem] = Array(repeating: GridItem(.flexible()), count: 2)
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 16) {
                ForEach(sponsor, id: \.id) { sponsor in
                    VStack {
                        sponsor.image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(10)
                            .padding(8)
                            .padding(.bottom, -16)
                        
                        Text(sponsor.description)
                            .font(.caption)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.leading)
                            .padding(8)
                    }
                    .background(Color("backgroundColor"))
                    .cornerRadius(10)
                    .shadow(color: Color("mainThemeColor"), radius: 5)
                    .padding()
                }
            }
            .padding()
        }
        .navigationTitle("Sponsors")
        .background(Color("backgroundColor"))
    }
}

#Preview {
    SponsorsView(sponsor: Sponsor.data)
}
