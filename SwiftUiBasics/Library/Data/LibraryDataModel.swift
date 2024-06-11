//
//  LibraryDataModel.swift
//  SwiftUiBasics
//
//  Created by Manish Patidar on 11/06/24.
//

import Foundation

enum filterCategories: String, CaseIterable {
    case playlists = "Playlists"
    case artists = "Artists"
    case podcastsAndShows = "Podcasts & Shows"
}

enum sortCategories: String, CaseIterable {
    case mostRecent = "Most recent"
    case recentlyPlayed = "Recently played"
    case recentlyAdded = "Recently added"
    case alphabetical = "Alphabetical"
    case creator = "Creator"
}
