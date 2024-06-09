//
//  TabView.swift
//  SwiftUiBasics
//
//  Created by Manish Patidar on 09/06/24.
//

import SwiftUI

struct MainTabView: View {
    @State var selectedTab = 0
    let tab: TabItems = .home
    
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $selectedTab) {
                HomeView()
                    .tag(TabItems.home.rawValue)
                
                SearchView()
                    .tag(TabItems.search.rawValue)
                
                LibraryView()
                    .tag(TabItems.library.rawValue)
                
                PremiumView()
                    .tag(TabItems.premium.rawValue)
                
            }
            .tabViewStyle(DefaultTabViewStyle())
            VStack {
                Spacer()
                HStack {
                    ForEach(TabItems.allCases, id: \.self) { tab in
                        tabItems(tab: tab)
                    }
                }
                .background(Color.black)
                .padding(.top, 8)
            }
        }
    }
    
    func tabItems(tab: TabItems) -> some View {
        
            Button {
                selectedTab = tab.rawValue
            } label: {
                VStack {
                Image(systemName: tab.iconName)
                    .resizable()
                    .tint(.white)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 24, height: 24)
                Text(tab.title)
                    .font(.system(size: 14))
                    .lineLimit(2)
                    .foregroundColor(.white)
            }
        }
        .padding(.vertical, 8)
        .frame(maxWidth: .infinity)
        .background(selectedTab == tab.rawValue ? Color.white.opacity(0.2) : Color.clear)
        .cornerRadius(8)
    }
}

#Preview {
    MainTabView()
}
