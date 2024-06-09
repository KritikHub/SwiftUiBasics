//
//  CardModel.swift
//  SwiftUiBasics
//
//  Created by Manish Patidar on 08/06/24.
//

import Foundation

struct ColorCard: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    
    static func data() -> [ColorCard] {
        return [
            ColorCard(imageName: "cloud.sun.rain.fill",
                      title: "Rainy"),
            ColorCard(imageName: "sun.max.fill",
                      title: "Sunny"),
            ColorCard(imageName: "moon.fill",
                      title: "Windy"),
            ColorCard(imageName: "cloud.fill",
                      title: "Cloudy"),
            ColorCard(imageName: "cloud.snow.fill",
                      title: "Snowy"),
            ColorCard(imageName: "cloud.bolt.fill",
                      title: "Stormy"),
            ColorCard(imageName: "cloud.moon.rain.fill",
                      title: "Rainy"),
        ]
    }
}


