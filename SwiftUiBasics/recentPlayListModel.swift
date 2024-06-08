//
//  recentCardModel.swift
//  SwiftUiBasics
//
//  Created by Manish Patidar on 08/06/24.
//

import Foundation

struct RecentPlayListModel: Identifiable {
    let id = UUID()
    let image: String
    let title: String
    
    
    static func data() -> [RecentPlayListModel] {
        return [
            RecentPlayListModel(image: "premiumBg", title: "Arijit Singh Mix"),
            RecentPlayListModel(image: "premiumBg", title: "Daily Mix"),
            RecentPlayListModel(image: "premiumBg", title: "Shreya Ghosal"),
            RecentPlayListModel(image: "premiumBg", title: "Sonu Nigam"),
        ]
    }
}
