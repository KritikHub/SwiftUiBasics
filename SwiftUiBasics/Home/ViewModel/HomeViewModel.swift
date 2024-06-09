//
//  HomeViewModel.swift
//  SwiftUiBasics
//
//  Created by Manish Patidar on 08/06/24.
//

import Foundation

struct HomeViewModel {
   
    var factory: DataFactoryProtocol = DataFactory()
    
    func fetchSongs() -> [Song] {
        let response: SongsResponse? = factory.loadData(from: .songsList)
        return response?.songs ?? []
    }
}

enum songGenre: String, CaseIterable, Decodable  {
    case myMix = "My Mix"
    case madeForJames = "Made For James"
    case yourTopMixes = "Your Top Mixes"
    case basedOnRecentListening = "Based On Recent Listening"
}

