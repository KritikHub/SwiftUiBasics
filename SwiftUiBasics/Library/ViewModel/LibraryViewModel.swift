//
//  ViewModel.swift
//  SwiftUiBasics
//
//  Created by Manish Patidar on 13/06/24.
//

import Foundation

struct LibraryViewModel {
    
    var factory: DataFactoryProtocol = DataFactory()
    
    func fetchSongs() -> [Song] {
        let response: SongsResponse? = factory.loadData(from: .songsList)
        return response?.songs ?? []
    }
}
