//
//  songPlaylistCardView.swift
//  SwiftUiBasics
//
//  Created by Manish Patidar on 08/06/24.
//

import SwiftUI

struct SongPlaylistCardView: View {
    var body: some View {
        VStack {
            Image("premiumBg")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("Arijit Shingh, Payal Dev, Pritam")
                .multilineTextAlignment(.leading)
                .lineLimit(2)
                .foregroundColor(.white)
        }.frame(width: 150, height: 150)
    }
}

