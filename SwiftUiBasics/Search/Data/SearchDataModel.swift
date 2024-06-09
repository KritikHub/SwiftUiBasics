//
//  SearchDataModel.swift
//  SwiftUiBasics
//
//  Created by Manish Patidar on 09/06/24.
//

import Foundation
import SwiftUI

enum searchGenre: String, CaseIterable {
    case music = "Music"
    case podcasts = "Podcasts"
    case liveEvents = "Live Events"
    case madeForYou = "Made For You"
    case newReleases = "New Releases"
    case hindi = "Hindi"
    case tamil = "Tamil"
    case punjabi = "Punjabi"
    case ghazals = "Ghazals"
    case podcastCharts = "Podcast Charts"
    case summer = "Summer"
    
    var color: Color {
        switch(self) {
        case .music:
            return .pink
        case .podcasts:
            return .green
        case .liveEvents:
            return .purple
        case .madeForYou:
            return .blue
        case .newReleases:
            return .cyan
        case .hindi:
            return .brown
        case .tamil:
            return .gray
        case .punjabi:
            return .red
        case .ghazals:
            return .orange
        case .podcastCharts:
            return .yellow
        case .summer:
            return .mint
        }
    }
}
