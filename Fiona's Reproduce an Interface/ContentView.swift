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
                // The gray date and circle views on the top of my design
                HStack {
                    Spacer()
                    CircleDateView(
                        dateTextColor: Color("Gray-1"),
                        circle1Color: Color("Gray-1"),
                        circle2Color: .black,
                        circle3Color: Color("Gray-1"),
                        numberTextColor: Color("Gray-1"),
                        dateText: "Thu",
                        numberText: "10"
                    )
                    Spacer()
                    CircleDateView(
                        dateTextColor: Color("Gray-1"),
                        circle1Color: Color("Gray-1"),
                        circle2Color: .black,
                        circle3Color: Color("Gray-1"),
                        numberTextColor: Color("Gray-1"),
                        dateText: "Fri",
                        numberText: "11"
                    )
                    Spacer()
                    CircleDateView(
                        dateTextColor: Color("Gray-1"),
                        circle1Color: Color("Gray-1"),
                        circle2Color: .black,
                        circle3Color: .black,
                        numberTextColor: Color("Gray-1"),
                        dateText: "Sat",
                        numberText: "12"
                    )
                    Spacer()
                    CircleDateView(
                        dateTextColor: Color("Gray-1"),
                        circle1Color: Color("Gray-1"),
                        circle2Color: .black,
                        circle3Color: .black,
                        numberTextColor: Color("Gray-1"),
                        dateText: "Sun",
                        numberText: "13"
                    )
                    Spacer()
                    CircleDateView(
                        dateTextColor: Color("Gray-1"),
                        circle1Color: Color("Gray-1"),
                        circle2Color: .black,
                        circle3Color: Color("Gray-1"),
                        numberTextColor: Color("Gray-1"),
                        dateText: "Mon",
                        numberText: "14"
                    )
                    Spacer()
                    CircleDateView(
                        dateTextColor: Color("Gray-1"),
                        circle1Color: Color("Gray-1"),
                        circle2Color: .black,
                        circle3Color: Color("Gray-1"),
                        numberTextColor: Color("Gray-1"),
                        dateText: "Tue",
                        numberText: "15"
                    )
                    Spacer()
                    CircleDateView(
                        dateTextColor: Color("Purple-5"),
                        circle1Color: Color("Purple-5"),
                        circle2Color: Color("Purple-5"),
                        circle3Color: Color("Gray-1"),
                        numberTextColor: .white,
                        dateText: "Wed",
                        numberText: "16"
                    )
                    Spacer()
                }
                .padding()
                
                List {
                    // The first section is the blue listItem along with its title
                    Section {
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
                        .padding()
                        .listRowBackground(Color("Blue-1"))
                    } header: {
                        Text("Running - 8 hr, 13 min")
                            .headerProminence(.increased)
                            .font(.body)
                            .fontWeight(.medium)
                            .padding(.vertical)
                    }
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    
                    // The second section containing the orange, black and purple listItem along with its title
                    Section {
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
                            .padding()
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
                            .padding()
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
                            .padding()
                            .listRowBackground(Color("Purple-3"))
                    } header: {
                        Text("Today")
                            .headerProminence(.increased)
                            .font(.body)
                            .fontWeight(.medium)
                            .padding(.vertical)
                    }
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                }
                // Adjust the style of the list
                .listStyle(.insetGrouped)
                }
                // Define the name of the navigation bar
                .navigationTitle("Time Entries")
                // Create the tool bar at the top
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        ZStack {
                            Circle()
                                .foregroundColor(Color("Purple-5"))
                                .frame(width: 30)
                            Circle()
                                .foregroundColor(.black)
                                .frame(width: 27)
                            Image(systemName: "plus")
                                .font(.system(size: 13))
                                .fontWeight(.bold)
                                .foregroundColor(Color("Purple-5"))
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
        // Customize tabBar
        let appearance = UITabBarAppearance()
        // Create the blur effect
        appearance.backgroundEffect = UIBlurEffect(style: .systemUltraThinMaterial)
        // Adjust the color and opacity of the toolBar
        appearance.backgroundColor = UIColor(Color.purple.opacity(0.2))
        // Using this appearance when scrolling behind the tabView
        UITabBar.appearance().standardAppearance = appearance
        // Using this appearance when content is scrolled all the way up
        UITabBar.appearance().scrollEdgeAppearance = appearance
    }
}
