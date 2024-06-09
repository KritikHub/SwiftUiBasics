//
//  SearchView.swift
//  SwiftUiBasics
//
//  Created by Manish Patidar on 09/06/24.
//

import SwiftUI

struct SearchView: View {
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 20),
        GridItem(.flexible(), spacing: 20)
    ]
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            ScrollView {
                Text("Search")
                    .font(.system(size: 32))
                    .foregroundStyle(.black)
                    .fontWeight(.bold)
                SearchBar()
                LazyVGrid(columns: columns) {
                    ForEach(searchGenre.allCases, id: \.self) { genre in
                        SearchGenreCard(genre: genre)
                    }
                }
                .padding()
                Spacer()
            }
        }
        
    }
           
}

