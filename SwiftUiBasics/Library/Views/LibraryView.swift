//
//  LibraryView.swift
//  SwiftUiBasics
//
//  Created by Manish Patidar on 09/06/24.
//

import SwiftUI

struct LibraryView: View {
    @State private var viewModel = LibraryViewModel()
    @State private var isSheetVisible = false
    @State private var sortListValue: sortCategory = .mostRecent
    @State private var songs: [Song] = []
    
    var body: some View {
        VStack {
            LibraryHeaderView()
            mainContent
            Spacer()
        }
        .padding()
        .background(Color.black)
        .onAppear {
           songs = viewModel.fetchSongs()
        }
    }
    
    @ViewBuilder
    var mainContent: some View {
        ScrollView {
            FilterLibraryView()
            mostRecent
            ForEach(songs) { song in
                PlaylistCardView()
            }
        }
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
                    Text(sortListValue.rawValue)
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
            FilterSheetView(sortItemVal: $sortListValue, isSheetVisibl: $isSheetVisible)
                .background(Color.black.opacity(0.8))
        }
    }
}

