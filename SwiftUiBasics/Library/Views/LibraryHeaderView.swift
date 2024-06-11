//
//  LibraryHeaderView.swift
//  SwiftUiBasics
//
//  Created by Manish Patidar on 11/06/24.
//

import SwiftUI

struct LibraryHeaderView: View {
    var body: some View {
        HStack {
            Button(action: {}) {
                Text("K")
                    .font(.system(size: 16))
                    .fontWeight(.medium)
                    .foregroundColor(.black)
            }
            .frame(width: 40, height: 40)
            .background(Color.brown)
            .clipShape(Circle())
            Text("Your Library")
                .font(.system(size: 24))
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Spacer()
            Button(action: {}) {
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.white)
            }
            Button(action: {}) {
                Image(systemName: "plus")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.white)
                    .padding(.leading, 5)
            }
        }
        .background(Color.black)
    }
}

#Preview {
    LibraryHeaderView()
}
