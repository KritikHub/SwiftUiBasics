//
//  HomeView.swift
//  SwiftUiBasics
//
//  Created by Manish Patidar on 08/06/24.
//

import SwiftUI

struct HomeView: View {
    
    let viewModel = HomeViewModel()
    
    @State private var songs: [Song] = []
    
    var body: some View {
        VStack(spacing: .zero) {
            header
            ScrollView {
                VStack(spacing: 15) {
                    ForEach(songGenre.allCases, id: \.self) { genre in
                        SongGenreCarousel(songs: songs, genre: genre)
                    }
                }
                .task {
                    songs = viewModel.fetchSongs()
                }
            }
            .padding(.top, 10)
            .background(Color.black)
        }
    }
    
    var header: some View {
            HStack {
                Text("Good Morning")
                    .font(.system(size: 30, weight: .semibold))
                    .foregroundStyle(.white)
                    .padding(.leading, 10)
                Spacer()
                HStack {
                    Image(systemName: "bell")
                        .resizable()
                        .foregroundStyle(.white)
                        .frame(width: 25, height: 25)
                    Image(systemName: "clock")
                        .resizable()
                        .foregroundStyle(.white)
                        .frame(width: 25, height: 25)
                        .padding(.leading, 10)
                    Image(systemName: "gearshape")
                        .resizable()
                        .foregroundStyle(.white)
                        .frame(width: 25, height: 25)
                        .padding(.leading, 10)
                }
                .padding(.trailing, 10)
            }
            .background(Color.black)
    }
   
}
