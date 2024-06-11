//
//  SearchAllView.swift
//  SwiftUiBasics
//
//  Created by Manish Patidar on 10/06/24.
//

import SwiftUI

struct SearchAllView: View {
    @State private var searchText = ""
    var songs: [Song]
    var body: some View {
        VStack(alignment: .leading) {
            SearchBar(text: $searchText)
            Text("Recent searches")
                .font(.system(size: 16))
                .fontWeight(.medium)
                .padding(.leading, 10)
                .foregroundColor(.white)
            List {
                ForEach(songs) { song in
                    SearchAlbumCard(song: song)
                        .listRowSeparator(.hidden)
                        .listRowInsets(EdgeInsets())
                        .listRowBackground(Color.black)
                }
            }
            .listStyle(PlainListStyle())
            .listRowSpacing(nil)
            .environment(\.defaultMinListRowHeight, 0)
        }
        .background(Color.black)
        .onTapGesture {
            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
        }
    }
}

