//
//  PlaylistCardView.swift
//  SwiftUiBasics
//
//  Created by Manish Patidar on 14/06/24.
//

import SwiftUI

struct PlaylistCardView: View {
    @State var filterCategory: filterCategories = .artists
    
    var body: some View {
        HStack {
            contentView
            Spacer()
        }
        .padding(.horizontal, 10)
    }
    
    @ViewBuilder
      var contentView: some View {
          switch filterCategory {
          case .playlists, .podcastsAndShows:
              genreImage
              titleView
          case .artists:
              artistCard
              titleView
          }
      }
    var genreImage: some View {
        Image("spotifyImage")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 60, height: 60)
    }
    
    var artistCard: some View {
        Image("spotifyImage")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 60, height: 60)
            .clipShape(Circle())
    }
    
    var titleView: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text(titleSelection)
                .font(.system(size: 20))
                .foregroundStyle(.white)
                .fontWeight(.medium)
            HStack {
                if isPinVisible {
                    Image(systemName: "pin.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.green)
                        .frame(width: 14, height: 14)
                }
                Text(subtitleText)
                    .font(.system(size: 16))
                    .foregroundColor(.white)
            }
            .padding(.top, 3)
        }
        .padding(.leading, 10)
    }
    
    var titleSelection: String {
        if filterCategory == .playlists {
            return "Liked Songs"
        } else if filterCategory == .artists {
            return "Mehdi Hasan"
        } else {
            return "MeTime"
        }
    }
    
    var isPinVisible: Bool {
        filterCategory == .playlists
    }
    
    var isArtistVisible: Bool {
        if filterCategory == .artists {
            return true
        }
        return false
    }
    
    var subtitleText: String {
          switch filterCategory {
          case .artists:
              return "Artist"
          default:
              return "Playlist - 1 song"
          }
      }
}

