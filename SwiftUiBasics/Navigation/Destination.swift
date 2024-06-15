//
//  Destinations.swift
//  SwiftUiBasics
//
//  Created by Manish Patidar on 15/06/24.
//

import SwiftUI

enum Destination: Hashable {
    case home
    case search
    case library
    case premium
}

extension View {
     @ViewBuilder
    func navigationDestination(for destination: Destination) -> some View {
        self.navigationDestination(for: Destination.self) { destination in
            switch destination {
            case .home:
                HomeView()
            case .search:
                SearchHomeView()
            case .library:
                LibraryView()
            case .premium:
                PremiumView()
            }
        }
    }
}
