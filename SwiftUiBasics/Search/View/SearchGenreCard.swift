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
            VStack(alignment: .leading) {
                Text(genre.rawValue)
                    .foregroundColor(.white)
                    .font(.system(size: 16))
                    .fontWeight(.medium)
                    .frame(maxWidth: 90, alignment: .leading)
                    .lineLimit(3)
                    .padding([.leading, .top], 10)
                Spacer()
            }
            .frame(width: 160, height: 100, alignment: .topLeading)
            
            Image("locPermission")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 85, alignment: .bottomTrailing)
                .rotationEffect(.degrees(25))
                .offset(x: 40, y: 25)
        }
        .frame(width: 160, height: 100, alignment: .topLeading)
        .background(genre.color)
        .clipShape(RoundedRectangle(cornerRadius: 5))
        .shadow(radius: 5)
    }
}
