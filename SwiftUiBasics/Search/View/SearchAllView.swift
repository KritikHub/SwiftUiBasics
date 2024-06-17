//
//  SearchAllView.swift
//  SwiftUiBasics
//
//  Created by Manish Patidar on 10/06/24.
//

import SwiftUI

struct SearchAllView: View {
    @State var searchText = ""
    @State var isEditing = false
    
    var songs: [Song]
    var body: some View {
        VStack(alignment: .leading) {
            SearchBar(text: $searchText, isEditing: $isEditing)
            Text("Recent searches")
                .font(.system(size: 16))
                .fontWeight(.medium)
                .padding(.leading, 10)
                .foregroundColor(.white)
            ScrollView {
                ForEach(songs) { song in
                    SearchAlbumCard(song: song)
                }
            }
        }
        .background(Color.black)
        .onTapGesture {
            isEditing = false
            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
        }
    }
}

