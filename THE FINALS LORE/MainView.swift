//
//  MainView.swift
//  THE FINALS LORE
//
//  Created by Дмитрий Снигирев on 19.03.2024.
//

import Foundation
import SwiftUI

struct MainView: View {
    var body: some View {
        
        ZStack {

            Color("mainThemeColor")
                .edgesIgnoringSafeArea(.top)
            
            VStack {
                
                Image("the_finals_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .cornerRadius(3.0)
                    .padding(8)
                
                Text("""
                 THE FINALS takes place about 75 years in the future, roughly around the year 2100. It is the greatest virtual game show on the planet, with a large, global fan base, and considered a window to a bigger world outside of the real one - known as the Meatspace, but most people spend their time in the Virtual World. Contestants join through VR-technology to access the hyper-realistic arenas and fight for fame, riches, and the favor of generous seasonal Sponsors.
                 """)
                .foregroundColor(.white)
                .fontWeight(.bold)
                .padding(.top, 0)
                .padding(.leading, 16)
                .padding(.trailing, 16)
                
            }

        }
    }
}

#Preview {
    MainView()
}
