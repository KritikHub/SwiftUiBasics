//
//  NavigationPath.swift
//  SwiftUiBasics
//
//  Created by Manish Patidar on 15/06/24.
//

import Foundation

class NavigationPath<T> {
    private var path: [T] = []
    
    var isEmpty: Bool {
        path.isEmpty
    }
    
    var currentDestination: T? {
        path.last
    }
    func navigate(to destination: T) {
        path.append(destination)
    }
    
    func navigateBack() {
            _ = path.popLast()
        }
    
    func removeLastView() {
        if !path.isEmpty {
            path.removeLast()
        }
    }
    
    func navigateToRoot() {
        if let first = path.first {
            path = [first]
        }
    }
    
    func removeAllDestinations() {
        path.removeAll()
    }
}
