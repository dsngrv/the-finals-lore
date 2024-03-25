//
//  SponsorsView.swift
//  THE FINALS LORE
//
//  Created by Дмитрий Снигирев on 18.03.2024.
//

import Foundation
import SwiftUI

//struct SponsorsView: View {
//    let sponsors: [Sponsors]
//    
//    var body: some View {
//        List(sponsors) { sponsor in
//            VStack {
//                
//                sponsor.image
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                
//                Text(sponsor.description)
//                    .font(.headline)
//            }
//            .padding()
//            .cornerRadius(10)
//            .padding(.horizontal)
//            .listRowSeparator(.hidden)
//        }
//        .navigationTitle("Sponsors")
//        .scrollIndicators(.hidden)
//    }
//}

struct SponsorsView: View {
    let sponsors: [Sponsors]
    
    let columns: [GridItem] = Array(repeating: GridItem(.flexible()), count: 2)
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 16) {
                ForEach(sponsors, id: \.id) { sponsor in
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
                            .multilineTextAlignment(.leading)
                            .padding(8)
                    }
                    .background()
                    .cornerRadius(10)
                    .shadow(color: .red, radius: 5)
                    .padding()
                }
            }
            .padding()
        }
        .navigationTitle("Sponsors")
    }
}

#Preview {
    SponsorsView(sponsors: Sponsors.data)
}
