//
//  PlaylistGridView.swift
//  SwiftUiBasics
//
//  Created by Manish Patidar on 17/06/24.
//

import SwiftUI

struct PlaylistGridCardView: View {
    @State var filterCategory: filterCategories = .artists
    var isPinVisible: Bool
    var titleSelection: String
    var subtitleText: String
    
    var body: some View {
        gridView
    }
    
    var imageShape: AnyShape {
        filterCategory == .artists ? AnyShape(Circle()) : AnyShape(Rectangle())
    }
    
    var listAlignment: HorizontalAlignment {
        filterCategory == .artists ? .center : .leading
    }
    var gridView: some View {
        VStack(alignment: listAlignment, spacing: 0) {
            Image("spotifyImage")
                .resizable()
                .frame(width: 170, height: 170)
                .clipShape(imageShape)
            Text(titleSelection)
                .font(.system(size: 14))
                .fontWeight(.medium)
                .foregroundStyle(.white)
                .padding(.top, 8)
            HStack(spacing: 5) {
                if isPinVisible {
                    Image(systemName: "pin.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.green)
                        .frame(width: 14, height: 14)
                }
                Text(subtitleText)
                    .font(.system(size: 14))
                    .foregroundColor(.gray)
            }
        }
        .padding(.bottom, 10)
    }
}

