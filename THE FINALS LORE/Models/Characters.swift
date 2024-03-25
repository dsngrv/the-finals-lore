//
//  Characters.swift
//  THE FINALS LORE
//
//  Created by Дмитрий Снигирев on 19.03.2024.
//

import Foundation
import SwiftUI

public struct Characters: Identifiable {
    public let id: Int
    public let title: String
    public let description: String
    public let image: Image
    
    static let data = [
        Characters(
            id: 1,
            title: "COMMENTATORS",
            description: """
            The commentators Scotty and June provide key information about the match, speaking to the fans who are watching.
            """,
            image: Image("char_scotty_june")
        ),
        Characters(
            id: 2,
            title: "THE ANNOUNCER",
            description: """
            The announcer is an erratic, larger-than-life master of ceremonies who can be heard through the loudspeakers in the arena.
            """,
            image: Image("char_announcer")
        ),
        Characters(
            id: 3,
            title: "CNS",
            description: """
            CNS is a mysterious hacking organization that directly relates to the lore of THE FINALS.
            """,
            image: Image("char_cns")
        ),
        Characters(
            id: 4,
            title: "ODILIA, THE TRICKSTER",
            description: """
            Odilia is a contestant in THE FINALS, who is known for her ability to dance between illusion and virtual reality, leaving opponents chasing shadows.
            """,
            image: Image("char_odilia")
        ),
        Characters(
            id: 5,
            title: "ARIAD, CNS",
            description: """
            Ariad is a member of the hacking collective known as CNS.
            """,
            image: Image("char_ariad_cns")
        )
    ]
}
