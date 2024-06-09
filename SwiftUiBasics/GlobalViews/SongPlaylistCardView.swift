//
//  songPlaylistCardView.swift
//  SwiftUiBasics
//
//  Created by Manish Patidar on 08/06/24.
//

import SwiftUI

struct SongPlaylistCardView: View {
    let song: Song
    var body: some View {
        VStack {
            Image("premiumBg")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text(song.singers.joined(separator: ","))
                .multilineTextAlignment(.leading)
                .lineLimit(2)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150, alignment: .top)
    }
}

