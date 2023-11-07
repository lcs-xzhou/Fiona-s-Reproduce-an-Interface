//
//  CircleDateView.swift
//  Fiona's Reproduce an Interface
//
//  Created by Fiona ZHOU on 2023-11-06.
//

import SwiftUI

struct CircleDateView: View {
    
    let dateTextColor: Color
    let circle1Color: Color
    let circle2Color: Color
    let numberTextColor: Color
    let dateText: String
    let numberText: String
    
    var body: some View {
        VStack {
            Text(dateText)
                .foregroundColor(dateTextColor)
                .font(.system(size: 16))
            ZStack {
                Circle()
                    .frame(width: 35)
                    .foregroundColor(circle1Color)
                Circle()
                    .foregroundColor(circle2Color)
                    .frame(width: 32)
                Text(numberText)
                    .foregroundColor(numberTextColor)
                    .scaledToFit()
                    .font(.system(size: 16))
            }
            Circle()
                .frame(width: 5)
                .foregroundColor(circle1Color)
        }
    }
}

#Preview {
    CircleDateView(
        dateTextColor: Color("Gray-1"),
        circle1Color: Color("Gray-1"),
        circle2Color: .black,
        numberTextColor: Color("Gray-1"),
        dateText: "Thu",
        numberText: "10"
    )
}
