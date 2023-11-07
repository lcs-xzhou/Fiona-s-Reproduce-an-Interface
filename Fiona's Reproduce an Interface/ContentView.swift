//
//  ContentView.swift
//  Fiona's Reproduce an Interface
//
//  Created by Fiona ZHOU on 2023-11-06.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Spacer()
                    CircleDateView(
                        dateTextColor: Color("Gray-1"),
                        circle1Color: Color("Gray-1"),
                        circle2Color: .black,
                        numberTextColor: Color("Gray-1"),
                        dateText: "Thu",
                        numberText: "10"
                    )
                    Spacer()
                    CircleDateView(
                        dateTextColor: Color("Gray-1"),
                        circle1Color: Color("Gray-1"),
                        circle2Color: .black,
                        numberTextColor: Color("Gray-1"),
                        dateText: "Fri",
                        numberText: "11"
                    )
                    Spacer()
                    CircleDateView(
                        dateTextColor: Color("Gray-1"),
                        circle1Color: Color("Gray-1"),
                        circle2Color: .black,
                        numberTextColor: Color("Gray-1"),
                        dateText: "Sat",
                        numberText: "12"
                    )
                    Spacer()
                    CircleDateView(
                        dateTextColor: Color("Gray-1"),
                        circle1Color: Color("Gray-1"),
                        circle2Color: .black,
                        numberTextColor: Color("Gray-1"),
                        dateText: "Sun",
                        numberText: "13"
                    )
                    Spacer()
                    CircleDateView(
                        dateTextColor: Color("Gray-1"),
                        circle1Color: Color("Gray-1"),
                        circle2Color: .black,
                        numberTextColor: Color("Gray-1"),
                        dateText: "Mon",
                        numberText: "14"
                    )
                    Spacer()
                    CircleDateView(
                        dateTextColor: Color("Gray-1"),
                        circle1Color: Color("Gray-1"),
                        circle2Color: .black,
                        numberTextColor: Color("Gray-1"),
                        dateText: "Tue",
                        numberText: "15"
                    )
                    Spacer()
                    CircleDateView(
                        dateTextColor: Color("Purple-4"),
                        circle1Color: Color("Purple-4"),
                        circle2Color: Color("Purple-4"),
                        numberTextColor: .white,
                        dateText: "Wed",
                        numberText: "16"
                    )
                    Spacer()
                }
                .padding()
                List {
                    Group {
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
                        .listRowBackground(Color("Blue-1"))
                    }
                    .padding()
                    .listRowInsets(
                        .init(
                            top: 0,
                            leading: 0,
                            bottom: 0,
                            trailing: 0
                        )
                    )
                }
                List {
                    Group {
                        SwiftUIView(
                            title1: "Mars Exploration Inc.",
                            title2: "Lightweight Pizza App",
                            subTitle: "ios Development",
                            content: "Started implementing AR gravity simulator",
                            time: "01:07:37",
                            rectangleColor: Color("Orange-1"),
                            circleColor1: Color("Orange-1"),
                            circleColor2: Color("Orange-1"),
                            rectangleColor1: Color("Orange-1"),
                            textColor: .white
                    )
                            .listRowBackground(Color("Orange-1"))
                        SwiftUIView(
                            title1: "Wildlife Finder Inc.",
                            title2: "Bear With Me",
                            subTitle: "ios Development",
                            content: "Continued implementing explore view",
                            time: "03:15:00",
                            rectangleColor: Color("Black-1"),
                            circleColor1: Color("Black-1"),
                            circleColor2: Color("Black-1"),
                            rectangleColor1: Color("Black-1"),
                            textColor: .white
                        )
                        .listRowBackground(Color("Black-1"))
                        SwiftUIView(
                            title1: "Mars Exploration Inc.",
                            title2: "Bear With Me",
                            subTitle: "ios Development",
                            content: "Continued implementing explore view",
                            time: "02:13:00",
                            rectangleColor: Color("Purple-3"),
                            circleColor1: Color("Purple-3"),
                            circleColor2: Color("Purple-3"),
                            rectangleColor1: Color("Purple-3"),
                            textColor: .white
                        )
                        .listRowBackground(Color("Purple-3"))
                    }
                    .padding()
                    .listRowInsets(
                        .init(
                            top: 0,
                            leading: 0,
                            bottom: 0,
                            trailing: 0
                        )
                    )
                }
                .listStyle(.sidebar)
                }
                .navigationTitle("Time Entries")
                .toolbar {
                    HStack {
                        Spacer()
                        ZStack {
                            Circle()
                                .foregroundColor(Color("Purple-4"))
                                .frame(width: 30)
                            Circle()
                                .foregroundColor(.black)
                                .frame(width: 27)
                            Image(systemName: "plus")
                                .font(.system(size: 13))
                                .fontWeight(.bold)
                                .foregroundColor(Color("Purple-4"))
                    }
                }
            }
        }
        .padding()
    }
}

#Preview {
    TabView(selection: Binding.constant(5)) {
        
        ContentView()
            .tabItem {
                Image(systemName: "timer")
                Text("Time Entries")
            }
        
        Text("Invoices")
            .tabItem {
                Image(systemName: "doc.fill")
                Text("Invoices")
            }
        
        Text("Dashboard")
            .tabItem {
                Image(systemName: "gauge.with.dots.needle.bottom.50percent")
                Text("Dashboard")
            }
        
        Text("Clients")
            .tabItem {
                Image(systemName: "briefcase")
                Text("Clients")
            }
        
        Text("Company")
            .tabItem {
                Image(systemName: "person.2.crop.square.stack")
                Text("Company")
            }
    }
    // Change the accent color for the currently active tab item
    .accentColor(Color("Purple-1"))
    // Ensure tab items that are not active remain visible
    .preferredColorScheme(.dark)
    .onAppear {
        let appearance = UITabBarAppearance()
        UITabBar.appearance().standardAppearance = appearance
    }
    
    
}
