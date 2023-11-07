//
//  SwiftUIView.swift
//  Fiona's Reproduce an Interface
//
//  Created by Fiona ZHOU on 2023-11-06.
//

import SwiftUI

struct SwiftUIView: View {
    
    let title1: String
    let title2: String
    let subTitle: String
    let content: String
    let time: String
    let rectangleColor: Color
    let circleColor1: Color
    let circleColor2: Color
    let rectangleColor1: Color
    let textColor: Color
    
    var body: some View {
            HStack {
                VStack {
                    Spacer()
                    HStack {
                        Text(title1)
                            .font(.headline)
                        Spacer()
                    }
                    HStack {
                        Text(title2)
                            .font(.title2)
                            .fontWeight(.bold)
                        Spacer()
                    }
                    HStack {
                        Text(subTitle)
                            .font(.callout)
                        Spacer()
                    }
                    HStack {
                        Text(content)
                            .font(.footnote)
                        Spacer()
                    }
                    Spacer()
                }
                VStack {
                    HStack {
                        Spacer()
                        ZStack {
                            Rectangle()
                                .foregroundColor(rectangleColor)
                                .cornerRadius(4.0)
                                .frame(width: 70, height: 20)
                            Text(time)
                                .font(.system(size: 14))
                                .fontWeight(.bold)
                                .foregroundColor(textColor)
                        }
                    }
                    Spacer()
                    HStack {
                        Spacer()
                        ZStack {
                            Circle()
                                .foregroundColor(circleColor1)
                                .frame(width: 25)
                            Circle()
                                    .foregroundColor(circleColor2)
                                    .frame(width: 23)
                            Rectangle()
                                    .foregroundColor(rectangleColor1)
                                    .frame(width: 8, height: 8)
                                    .scaledToFit()
                        }
                    }
                }
                .frame(width: 55)
            }
            .frame(height: 100)
    }
}

#Preview {
    SwiftUIView(
        title1: "Mars Exploration Inc.",
        title2: "Explorer App",
        subTitle: "Design",
        content: "Designing onboarding",
        time: "01:37:42",
        rectangleColor: .white,
        circleColor1: .white,
        circleColor2: Color("Blue-1"),
        rectangleColor1: .white,
        textColor: Color("Blue-1")
    )
}
