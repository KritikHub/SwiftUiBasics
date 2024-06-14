//
//  LibraryDataModel.swift
//  SwiftUiBasics
//
//  Created by Manish Patidar on 11/06/24.
//

import Foundation

struct Category: Identifiable {
    let id = UUID()
    var category: sortCategory
    var isSelected: Bool = false
    
    init(category: sortCategory, isSelected: Bool = false) {
        self.category = category
        self.isSelected = isSelected
    }
    
    mutating func toggleSelection() {
        self.isSelected.toggle()
    }
}

enum filterCategories: String, CaseIterable {
    case playlists = "Playlists"
    case artists = "Artists"
    case podcastsAndShows = "Podcasts & Shows"
}

enum sortCategory: String, CaseIterable {
    case mostRecent = "Most recent"
    case recentlyPlayed = "Recently played"
    case recentlyAdded = "Recently added"
    case alphabetical = "Alphabetical"
    case creator = "Creator"
}
