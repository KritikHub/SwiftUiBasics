//
//  SwiftUiBasicsApp.swift
//  SwiftUiBasics
//
//  Created by Manish Patidar on 08/06/24.
//

import SwiftUI

@main
struct SwiftUiBasicsApp: App {
    @StateObject var navigationManager = NavigationManager<Destination>()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(navigationManager)
        }
    }
}
