//
//  LibraryView.swift
//  SwiftUiBasics
//
//  Created by Manish Patidar on 09/06/24.
//

import SwiftUI

struct LibraryView: View {
    @State var isSheetVisible = false
    @State var sortListValue: sortCategory = .mostRecent
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

