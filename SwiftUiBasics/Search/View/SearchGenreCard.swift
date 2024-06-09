//
//  SearchGenreCard.swift
//  SwiftUiBasics
//
//  Created by Manish Patidar on 09/06/24.
//

import SwiftUI

struct SearchGenreCard: View {
    let genre: searchGenre
    var body: some View {
            ZStack {
                ZStack {
                    Text(genre.rawValue)
                        .foregroundStyle(.white)
                        .font(.system(size: 16))
                        .fontWeight(.medium)
                        .frame(maxWidth: 60)
                        .lineLimit(3)
                        .padding()
                }
                .overlay {
                    Image("locPermission")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 90, height: 75, alignment: .bottomTrailing)
                        .rotationEffect(.degrees(25))
                        .offset(x: 90, y: 35)
                }
                .frame(width: 160, height: 100, alignment: .topLeading)
                .background(genre.color)
                .clipShape(RoundedRectangle(cornerRadius: 5))
                .shadow(radius: 5)
            }
    }
}
