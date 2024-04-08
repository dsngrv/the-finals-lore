//
//  Categories.swift
//  THE FINALS LORE
//
//  Created by Дмитрий Снигирев on 18.03.2024.
//

import Foundation
import SwiftUI

public struct Category: Identifiable {
    public let id: Int
    public let title: String
    public let description: String
    public let lightImage: String
    public let darkImage: String
    
    var currentImageName: String {
        if UITraitCollection.current.userInterfaceStyle == .dark {
            return darkImage
        } else {
            return lightImage
        }
    }
    
    static let data = [
        Category(
            id: 1,
            title: "IN-GAME SPONSORS",
            description: """
            Sponsors play a major role in THE FINALS, as they are the main vehicle for the narrative of the game. Sponsors want exposure to the game show's massive audience for their brand and products/services, and sponsored gear is a sign of a success for contestants.
            """,
            lightImage: "the_finals_sponsors",
            darkImage: "the_finals_sponsors_dark"
        ),
        Category(
            id: 2,
            title: "CHARACTERS",
            description: """
            THE FINALS has a diverse cast of characters, including mascots, announcers, contestants, and commentators.
            """,
            lightImage: "the_finals_characters",
            darkImage: "the_finals_characters_dark"
        ),
    ]
}