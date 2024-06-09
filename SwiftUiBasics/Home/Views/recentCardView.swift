//
//  recentCardView.swift
//  SwiftUiBasics
//
//  Created by Manish Patidar on 08/06/24.
//

import SwiftUI

struct recentCardView: View {
    let recentPlayList: Song
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 200, height: 60)
                .foregroundColor(.cyan)
                .opacity(0.4)
                .shadow(radius: 10)
            HStack {
                Image(recentPlayList.image)
                    .resizable()
                    .frame(width: 80, height: 60)
                Text(recentPlayList.name)
                    .font(.system(size: 20, weight: .medium))
                    .foregroundColor(.white)
                    .padding(.horizontal, 5)
            }
            .frame(width: 200, height: 60)
        }
        .clipShape(RoundedRectangle(cornerRadius: 3))
    }
}

