//
//  SearchViewModel.swift
//  SwiftUiBasics
//
//  Created by Manish Patidar on 10/06/24.
//

import Foundation

struct SearchViewModel {
    
    var factory: DataFactoryProtocol = DataFactory()
    
    func fetchSongs() -> [Song] {
        let response: SongsResponse? = factory.loadData(from: .songsList)
        return response?.songs ?? []
    }
}
