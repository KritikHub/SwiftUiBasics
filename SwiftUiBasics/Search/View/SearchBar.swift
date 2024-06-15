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
      contentView
    }

    var contentView: some View {
        HStack {
            Button(action: {
                
            }) {
                Image(systemName: "arrow.backward")
                    .foregroundColor(.gray)
                    .padding(.leading, 8)
            }
            TextField("", text: $text, prompt: Text("Search query").foregroundColor(.gray))
                .padding(.horizontal, 25)
                .fontWeight(.semibold)
                .frame(height: 40)
                .background(Color.red)
                .foregroundColor(.white)
                .overlay(
                    HStack {
                        Spacer()
                        if isEditing {
                            cancelButton
                        } else {
                            cameraButton
                        }
                    }
                    .padding(.horizontal, 4)
                )
                .onTapGesture {
                    self.isEditing = true
                }
        }
        .clipped()
        .frame(maxHeight: 70)
        .padding(.horizontal, 10)
        .background(Color.gray.opacity(0.3))
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

