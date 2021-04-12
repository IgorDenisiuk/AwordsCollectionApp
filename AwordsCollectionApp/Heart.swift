//
//  Heart.swift
//  AwordsCollectionApp
//
//  Created by Igor Denisiuk on 12.04.21.
//  Copyright © 2021 Alexey Efimov. All rights reserved.
//

import SwiftUI

struct Heart: View {
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Rectangle()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [.red, .black]),
                            startPoint: UnitPoint(x: 0, y: 1),
                            endPoint: UnitPoint(x: 1, y: 0)
                        )
                    )
                    .foregroundColor(.red)
                    .cornerRadius(5)
                
                Circle()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [.red, .black]),
                            startPoint: UnitPoint(x: 0, y: 1),
                            endPoint: UnitPoint(x: 1, y: 0)
                        )
                    )
                    .foregroundColor(.red)
                    .padding(.top, -width)
                
                Circle()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [.red, .black]),
                            startPoint: UnitPoint(x: 0, y: 1),
                            endPoint: UnitPoint(x: 1, y: 0)
                        )
                    )
                    .foregroundColor(.red)
                    .padding(.trailing, -width)
                
            }
            .rotationEffect(.degrees(-45))
            
            Image(systemName: "waveform.path")
                .resizable()
                .frame(width: width, height: height * 1.15)
                .foregroundColor(.white)

        }
        .scaleEffect(0.5)
        .frame(width: width, height: height)
    }
}

struct Heart_Previews: PreviewProvider {
    static var previews: some View {
        Heart(width: 200, height: 200)
    }
}
