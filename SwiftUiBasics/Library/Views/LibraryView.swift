//
//  LibraryView.swift
//  SwiftUiBasics
//
//  Created by Manish Patidar on 09/06/24.
//

import SwiftUI

struct LibraryView: View {
    @State var isSheetVisible = false
    var body: some View {
        VStack {
            LibraryHeaderView()
            FilterLibraryView()
            mostRecent
            Spacer()
        }
        .padding()
        .background(Color.black)
    }
    
    var mostRecent: some View {
        HStack {
            Button(action: {
                isSheetVisible = true
            }) {
                HStack {
                    Image(systemName: "arrow.up.arrow.down")
                        .resizable()
                        .frame(width: 16, height: 16)
                        .foregroundColor(.white)
                    Text("Most recent")
                        .font(.system(size: 14))
                        .foregroundColor(.white)
                }
            }
            Spacer()
            Image(systemName: "square.grid.2x2")
                .resizable()
                .frame(width: 16, height: 16)
                .foregroundColor(.white)
                .onTapGesture {
                    print("tapped ...")
                }
        }
        .padding()
        .sheet(isPresented: $isSheetVisible) {
            VStack(alignment: .leading) {
                Text("Sort by")
                    .font(.system(size: 24))
                    .foregroundStyle(.white)
                    .fontWeight(.semibold)
                List {
                    ForEach(sortCategories.allCases, id: \.self) { value in
                        Text(value.rawValue)
                            .font(.system(size: 20))
                            .foregroundStyle(.white)
                            .fontWeight(.semibold)
                            .listRowSeparator(.hidden)
                            .listRowInsets(EdgeInsets())
                            .listRowBackground(Color.black)
                    }
                }
                .background(Color.black)
            }
            .presentationDetents([.medium])
            .background(Color.black)
        }
    }
}

#Preview {
    LibraryView()
}
