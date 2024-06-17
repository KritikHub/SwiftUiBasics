//
//  filterLibraryView.swift
//  SwiftUiBasics
//
//  Created by Manish Patidar on 11/06/24.
//

import SwiftUI

struct FilterLibraryView: View {
    @State private var isFilterSelected = true
    
    var body: some View {
        VStack {
            ScrollView(.horizontal) {
                if isFilterSelected {
                    selectedFilterView(category: filterCategories.artists)
                } else {
                    filterSelectionView
                }
            }
        }
    }
    var filterSelectionView: some View {
        HStack {
            ForEach(filterCategories.allCases, id: \.self) { category in
               filterButton(category: category)
                .padding(.horizontal, 2)
                .frame(height: 34)
            }
            .scrollIndicators(.hidden)
        }
    }
    
    func filterButton(category: filterCategories) -> some View {
        Button(action: {}) {
            Text(category.rawValue)
                .font(.system(size: 14))
                .foregroundStyle(.white)
                .padding(8)
                .padding(.horizontal, 8)
                .frame(maxWidth: .infinity)
                .background(
                    RoundedRectangle(cornerRadius: 14)
                        .stroke(Color.white, lineWidth: 1)
                )
        }
    }
    
    func selectedFilterView(category: filterCategories) -> some View {
        HStack {
            Button(action: {
                print("button tapped /")
            }) {
                Image(systemName: "multiply")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 16, height: 16)
                    .padding(5)
                    .border(Color.gray, width: 1)
                    .foregroundColor(.white)
            }
            .frame(width: 25, height: 25)
            .padding(5)
            .clipShape(Circle())
        }
    }
}

#Preview {
    FilterLibraryView()
}
