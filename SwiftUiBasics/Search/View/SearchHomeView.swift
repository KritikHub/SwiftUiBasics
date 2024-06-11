//
//  SearchView.swift
//  SwiftUiBasics
//
//  Created by Manish Patidar on 09/06/24.
//

import SwiftUI

struct SearchHomeView: View {
    
    @State private var songs: [Song] = []
    @State private var isSearchAllVisible = false
    
    var viewModel = SearchViewModel()
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 20),
        GridItem(.flexible(), spacing: 20)
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            if isSearchAllVisible {
                SearchAllView(songs: songs)
            } else {
                mainContent
            }
        }
        .background(Color.black)
        .task {
            songs = viewModel.fetchSongs()
        }
    }
    
    var mainContent: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text("Search")
                    .font(.system(size: 32))
                    .foregroundStyle(.white)
                    .fontWeight(.bold)
                    .padding(.top, 10)
                searchBar
                Text("Browse all")
                    .font(.system(size: 18))
                    .foregroundStyle(.white)
                    .fontWeight(.medium)
                LazyVGrid(columns: columns) {
                    ForEach(searchGenre.allCases, id: \.self) { genre in
                        SearchGenreCard(genre: genre)
                    }
                }
                Spacer()
            }
            .padding(.horizontal, 16)
        }
    }
    var searchBar: some View {
        Button(action: {
            isSearchAllVisible = true
        }){
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.black)
                    .padding(.leading, 5)
                Text("Artists, songs, or podcasts")
                    .padding(.leading, 5)
                    .foregroundColor(.black)
                    .fontWeight(.semibold)
            }
            .frame(width: 330, height: 50,alignment: .leading)
            .padding(.horizontal, 12)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 5))
        }
    }
}

