//
//  SongGenreCarousel.swift
//  SwiftUiBasics
//
//  Created by Manish Patidar on 08/06/24.
//

import SwiftUI

struct SongGenreCarousel: View {
    let songs: [Song]
    let genre: songGenre
    
    init(songs: [Song] = [], genre: songGenre = .myMix) {
        self.songs = songs
        self.genre = genre
    }
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(genre.rawValue)
                .font(.system(size: 24, weight: .medium))
                .foregroundStyle(Color.white)
            songGenre
        }
    }
    var songGenre: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            genreCarousel
        }
    }
    private var genreCarousel: some View {
        HStack(spacing: 10) {
            ForEach(songs) { song in 
                switch genre {
                case .myMix:
                    recentCardView(recentPlayList: song)
                case .madeForJames:
                    SongPlaylistCardView(song: song)
                case .yourTopMixes:
                    SongPlaylistCardView(song: song)
                case .basedOnRecentListening:
                    SongPlaylistCardView(song: song)
                }
            }
        }
    }
}

