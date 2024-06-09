//
//  TabItems.swift
//  SwiftUiBasics
//
//  Created by Manish Patidar on 09/06/24.
//

import Foundation

enum TabItems: Int, CaseIterable {
    case home = 0
    case search
    case library
    case premium 
    
    var title: String {
        switch self {
        case .home:
            return "Home"
        case .search:
            return "Search"
        case .library:
            return "Your Library"
        case .premium:
            return "Premium"
        }
    }
    var iconName: String {
        switch self {
        case .home:
            return "house.fill"
        case .search:
            return "magnifyingglass"
        case .library:
            return "books.vertical.fill"
        case .premium:
            return "indianrupeesign.circle.fill"
        }
    }
}

