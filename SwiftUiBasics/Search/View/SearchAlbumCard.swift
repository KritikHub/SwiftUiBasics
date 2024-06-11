//
//  SearchAlbumCard.swift
//  SwiftUiBasics
//
//  Created by Manish Patidar on 10/06/24.
//

import SwiftUI

struct SearchAlbumCard: View {
    var song: Song
    var body: some View {
        HStack {
            Image("locPermission")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 60, height: 60)
            VStack(alignment: .leading) {
                Text(song.name)
                    .font(.system(size: 16))
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                HStack {
                    Text("Song - ")
                        .font(.system(size: 12))
                        .foregroundColor(.white)
                    Text(song.singers.joined(separator: ","))
                        .font(.system(size: 12))
                        .foregroundColor(.white)
                    Spacer()
                }
            }
            Spacer()
            Button(action: {
                print("button clicked ....")
            }){
                Image(systemName: "multiply")
                    .resizable()
                    .foregroundColor(.gray)
                    .frame(width: 16, height: 16)
                    .padding(.trailing, 8)
            }
        }
        .padding(.horizontal, 10)
    }
}

