//
//  SearchBar.swift
//  SwiftUiBasics
//
//  Created by Manish Patidar on 09/06/24.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String
    @State private var isEditing = false
    var body: some View {
        HStack {
            TextField("", text: $text, prompt: Text("Search query").foregroundColor(.gray))
                .padding(8)
                .padding(.horizontal, 25)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .background(Color.gray.opacity(0.3))
                .keyboardType(.alphabet)
                .onTapGesture {
                    self.isEditing = true
                }
                .overlay(
                   overlayView
                )
        }
        .frame(height: 70)
    }

    var overlayView: some View {
        HStack {
            Image(systemName: "arrow.backward")
                .foregroundColor(.gray)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 8)
            if isEditing {
               cancelButton
            } else {
               cameraButton
            }
        }
    }
    var cancelButton: some View {
        Button(action: {
            self.isEditing = false
            self.text = ""
            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
        }) {
            Image(systemName: "multiply")
                .foregroundColor(.gray)
                .padding(.trailing, 8)
        }
    }
    
    var cameraButton: some View {
        Button(action: {
        }) {
            Image(systemName: "camera")
                .foregroundColor(.gray)
                .padding(.trailing, 8)
        }
    }
}

