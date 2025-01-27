//
//  Place.swift
//  THE FINALS LORE
//
//  Created by Дмитрий Снигирев on 12.04.2024.
//

import MapKit
import Foundation

struct Place: Identifiable {
    public let id: Int
    public let title: String
    public let coordinate: CLLocationCoordinate2D
    public let description: String
    public let imageName: String
    
    static let data = [
        Place(
            id: 1,
            title: "MONACO",
            coordinate: CLLocationCoordinate2D(latitude: 43.7333300, longitude: 7.4166700),
            description: "Monaco (officially the Principality of Monaco) is a sovereign city-state and microstate on the French Riviera, located a few kilometers west of the Italian region of Liguria on the Mediterranean Sea. The arena is set on the Rock of Monaco, part of Monaco City, one of the 4 quarters of Monaco. Unlike Seoul, Monaco is more horizontally focused than vertically. The arena features parks, a Cathedral, and gardens, as opposed to high-rises and hospital complexes. Tournament matches on Monaco are sponsored by OSPUZE. The arena is officially named Monaco 2014.",
            imageName: "monaco"
        ),
        
        Place(
            id: 2,
            title: "SEOUL",
            coordinate: CLLocationCoordinate2D(latitude: 37.5665, longitude: 126.9780),
            description: "Seoul, officially known as the Seoul Special City, is the capital and largest metropolis of South Korea. Unlike Monaco, this arena is considerably more urban and sprawling, with multiple-storied apartment buildings, a mall, and a hospital. Tournament matches on Seoul are sponsored by ISEUL-T. This arena is officially named Seoul 2023.",
            imageName: "seoul"
        ),
        
        Place(
            id: 3,
            title: "LAS VEGAS",
            coordinate: CLLocationCoordinate2D(latitude: 36.1749700, longitude: -115.1372200),
            description: "Test your luck and reach for the stars in the glitz, glam, and tight-knit gameplay of this glittering arena. Tournament matches on Las Vegas are sponsored by HOLTOW. The arena is officially named Las Vegas 2032.",
            imageName: "las_vegas"
        ),
        
        Place(
            id: 4,
            title: "SYS$HORIZON",
            coordinate: CLLocationCoordinate2D(latitude: 37.4526482, longitude: -122.1811371),
            description: "SYS$HORIZON, or simply Horizon, is a glitchy, colorful cityscape glowing under a neon sun. The arena is only partially loaded and filled with floating geometric shapes. Horizon was introduced by hacking collective CNS.",
            imageName: "horizon"
        ),
        
        Place(
            id: 5,
              title: "SKYWAY STADIUM",
              coordinate: CLLocationCoordinate2D(latitude: 47.5903, longitude: -122.3326),
              description: "Skyway Stadium, a mixture of Seoul & Monaco, is a arena distinctly different from the parts it is made up of. Instead of being a recreation of a real-world location, it uses dioramas of existing maps to make a arena that feels much more virtual. Keep your eyes on the match, and try to drown out the cheering of the crowd! Tournament matches on Skyway Stadium are sponsored by Volpe.",
              imageName: "sky_stadium"
        )
    ]
}
