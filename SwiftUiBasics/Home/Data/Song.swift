//
//  SongData.swift
//  SwiftUiBasics
//
//  Created by Manish Patidar on 08/06/24.
//

import Foundation

struct SongsResponse: Decodable {
    let songs: [Song]
}

struct Song: Identifiable, Decodable {
    let id: Int
    let name: String
    let image: String
    let singers: [String]
}
