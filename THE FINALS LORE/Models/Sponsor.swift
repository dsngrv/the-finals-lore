//
//  Sponsors.swift
//  THE FINALS LORE
//
//  Created by Дмитрий Снигирев on 18.03.2024.
//

import Foundation
import SwiftUI

public struct Sponsor: Identifiable {
    public let id: Int
    public let description: String
    public let image: Image
    
    static let data = [
        Sponsor(
            id: 1,
            description: """
            OSPUZE, an energy drink brand. Official sponsor of the Monaco arena.
            """,
            image: Image("sponsor_ospuze")
        ),
        Sponsor(
            id: 2,
            description: """
            VAIIYA, cyber-security experts. Official sponsor of Season 2.
            """,
            image: Image("sponsor_vaiiya")
        ),
        Sponsor(
            id: 3,
            description: """
            VOLPE, the company behind the VR tech that makes THE FINALS possible. Official sponsor of the Skyway Stadium arena.
            """,
            image: Image("sponsor_volpe")
        ),
        Sponsor(
            id: 4,
            description: """
            HOLTOW, an insurance company, focusing on protecting digital assets. Official sponsor of the Las Vegas arena.
            """,
            image: Image("sponsor_holtow")
        ),
        Sponsor(
            id: 5,
            description: """
            ISEUL-T, South Korean fashion-wear brand. Official sponsor of the Seoul arena.
            """,
            image: Image("sponsor_iseul-t")
        ),
    ]
}
