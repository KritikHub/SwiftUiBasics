//
//  NavigationManager.swift
//  SwiftUiBasics
//
//  Created by Manish Patidar on 15/06/24.
//

import SwiftUI

class NavigationManager<T>: ObservableObject where T: Hashable {
    @Published var navigationPath = NavigationPath<T>()
    
    var isEmpty: Bool {
        navigationPath.isEmpty
    }
    
    func navigate(to destination: T) {
        navigationPath.navigate(to: destination)
    }
    
    func navigateBack() {
        navigationPath.navigateBack()
    }
    
    func navigateToRoot() {
        navigationPath.navigateToRoot()
    }
    
    func removeViewFromLast() {
        if !navigationPath.isEmpty {
            navigationPath.removeLastView()
        }
    }
    
    func removeAllDestinations() {
        navigationPath.removeAllDestinations()
    }
    
}
