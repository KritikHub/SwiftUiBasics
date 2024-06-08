//
//  CardView.swift
//  SwiftUiBasics
//
//  Created by Manish Patidar on 08/06/24.
//

import SwiftUI

struct CardView: View {
    let colorCard: ColorCard
    var body: some View {
        ZStack(alignment: .center) {
            Rectangle()
                .frame(width: 350, height: 300)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .shadow(radius: 8)
            VStack {
                Image(systemName: colorCard.imageName)
                    .resizable()
                    .frame(width: 80, height: 80)
                    .padding(20)
                    .background(Color.blue)
                    .clipShape(Circle())
                Text(colorCard.title)
                    .font(.title)
                    .padding()
            }
            
        }
        
            
    }
}

