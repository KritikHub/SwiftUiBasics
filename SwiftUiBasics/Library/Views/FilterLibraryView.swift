//
//  filterLibraryView.swift
//  SwiftUiBasics
//
//  Created by Manish Patidar on 11/06/24.
//

import SwiftUI

struct FilterLibraryView: View {
    var body: some View {
        VStack {
            ScrollView(.horizontal) {
                HStack {
                    ForEach(filterCategories.allCases, id: \.self) { category in
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
                        .padding(.horizontal, 2)
                        .frame(height: 34)
                    }
                    .scrollIndicators(.hidden)
                }
            }
        }
    }
}

#Preview {
    FilterLibraryView()
}
