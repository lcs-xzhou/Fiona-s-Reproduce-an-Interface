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
        VStack {
            Spacer()
            HStack {
                VStack {
                    HStack {
                        Text(title1)
                            .font(.title2)
                        Spacer()
                    }
                    HStack {
                        Text(title2)
                            .font(.title)
                            .fontWeight(.bold)
                        Spacer()
                    }
                    HStack {
                        Text(subTitle)
                            .font(.body)
                        Spacer()
                    }
                    HStack {
                        Text(content)
                            .font(.footnote)
                        Spacer()
                    }
                }
                VStack {
                    HStack {
                        Spacer()
                        ZStack {
                            Rectangle()
                                .foregroundColor(rectangleColor)
                                .frame(width: 70, height: 20)
                                .padding()
                            Text(time)
                                .font(.body)
                                .foregroundColor(textColor)
                        }
                    }
                    Spacer()
                    HStack {
                        Spacer()
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
                        Spacer()
                    }
                }

            }
            Spacer()
        }
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
