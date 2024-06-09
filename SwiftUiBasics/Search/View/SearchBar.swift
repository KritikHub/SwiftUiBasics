//
//  SearchBar.swift
//  SwiftUiBasics
//
//  Created by Manish Patidar on 09/06/24.
//

import SwiftUI

struct SearchBar: View {
    @State var searchText: String = ""
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(.gray)
                .padding(.leading, 8)
            TextField("Artists, songs, or podcasts", text: $searchText)
                .padding(8)
                .foregroundColor(.black)
                .fontWeight(.semibold)
        }
        .frame(width:300, height: 50)
        .padding(.horizontal, 16)
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 5))
        .shadow(color: .gray, radius: 5)
}
    
}

#Preview {
    SearchBar()
}
