//
//  SettingsView.swift
//  THE FINALS LORE
//
//  Created by Дмитрий Снигирев on 25.03.2024.
//

import Foundation
import SwiftUI

struct SettingsView: View {
    
    @Environment(\.colorScheme) var colorScheme
    @AppStorage("isToggleOn") private var isToggleOn = false
    @State private var sliderValue = 0.5
    @State private var selectedCommandIndex = 0
    @Binding var titleOn: Bool
    
    let gameCommands = ["The Boundless", "The Overdogs", "The Steamrollers"]
    
    var body: some View {
        
        NavigationView {

            Form {
                
                Section(header: Text("App settings")
                    .foregroundColor(Color("sectionHeaderColor"))) {
                    VStack {
                        Toggle("Change app theme", isOn: $isToggleOn)
                            .toggleStyle(SwitchToggleStyle(tint: Color("mainThemeColor")))
                            .foregroundColor(.white)
                        
                        Text(colorScheme == .light ? "Season 1 Theme enabled" : "Season 2 Theme enabled")
                            .padding(.top, 10)
                            .font(.headline)
                            .foregroundColor(.white)
                        
                    }
                    
                    VStack {
                        Text("Background app music volume")
                            .textCase(nil)
                            .multilineTextAlignment(.leading)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .foregroundColor(.white)
                        
                        Slider(value: $sliderValue, in: 0...1, step: 0.1)
                            .accentColor(Color("mainThemeColor"))
                    }
                    
                    VStack {
                        Toggle("Show titles", isOn: $titleOn)
                            .toggleStyle(SwitchToggleStyle(tint: Color("mainThemeColor")))
                            .foregroundColor(.white)

                        Text(titleOn == true ? "Navigation titles enabled" : "Navigation titles disabled")
                            .padding(.top, 10)
                            .font(.headline)
                            .foregroundColor(.white)
                    }
                    
                }
                .listRowBackground(Color("secondaryBGColor"))
                
                
                Section(header: Text("THE FINALS TEAM")
                    .foregroundColor(Color("sectionHeaderColor"))) {
                    Picker(selection: $selectedCommandIndex, label: Text("Select the team").foregroundColor(.white)) {
                        ForEach(gameCommands.indices, id: \.self) { index in
                            Text(self.gameCommands[index])
                        }
                    }
                    .pickerStyle(MenuPickerStyle())
                }
                .listRowBackground(Color("secondaryBGColor"))
                
            }
            .scrollContentBackground(.hidden)
            .background(Color("backgroundColor"))
            .toolbar(titleOn ? .visible : .hidden)
            .navigationBarTitle("Settings")
        }
    }
}
