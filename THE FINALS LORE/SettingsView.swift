//
//  SettingsView.swift
//  THE FINALS LORE
//
//  Created by Дмитрий Снигирев on 25.03.2024.
//

import Foundation
import SwiftUI

struct SettingsView: View {
    @State private var isToggleOn = false
    @State private var selectedFruitIndex = 0
    @State private var sliderValue = 0.5
    @State private var selectedCommandIndex = 0
    
    let gameCommands = ["The Boundless", "The Overdogs", "The Steamrollers"]
    
    var body: some View {
        
        NavigationView {
            
            Form {
                
                Section(header: Text("App settings")) {
                    Toggle("Change app theme", isOn: $isToggleOn)
                        .toggleStyle(SwitchToggleStyle(tint: Color("backgroundColor")))
                    
                    VStack {
                        Text("Background app music volume")
                            .textCase(nil)
                            .multilineTextAlignment(.leading)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Slider(value: $sliderValue, in: 0...1, step: 0.1)
                            .accentColor(Color("backgroundColor"))
                    }
                }
                
                Section(header: Text("THE FINALS TEAM")) {
                    Picker(selection: $selectedCommandIndex, label: Text("Select the team")) {
                        ForEach(gameCommands.indices, id: \.self) { index in
                            Text(self.gameCommands[index])
                        }
                    }
                    .pickerStyle(MenuPickerStyle())
                }
            }
            .navigationBarTitle("Settings")
        }
    }
}

#Preview {
    SettingsView()
}
