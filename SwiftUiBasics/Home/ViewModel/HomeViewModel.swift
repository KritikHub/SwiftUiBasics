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
    case myMix = "myMix"
    case madeForJames = "madeForJames"
    case yourTopMixes = "yourTopMixes"
    case basedOnRecentListening = "basedOnRecentListening"
}

