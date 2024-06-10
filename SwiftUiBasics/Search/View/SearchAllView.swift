//
//  SearchAllView.swift
//  SwiftUiBasics
//
//  Created by Manish Patidar on 10/06/24.
//

import SwiftUI

struct SearchAllView: View {
    
    var songs: [Song]
    var body: some View {
        VStack(alignment: .leading) {
            Text("Recent searches")
                .font(.system(size: 16))
                .fontWeight(.medium)
                .foregroundColor(.white)
            List {
                ForEach(songs) { song in
                    
            }
           
            }
        
        }
    }
}

