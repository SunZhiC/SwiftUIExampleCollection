//
//  TabViewContentView.swift
//  ExampleCollection
//
//  Created by link on 30/03/2023.
//

import SwiftUI

struct TabViewContentView: View {
    @State private var selectedTab = 0

    var body: some View {
        TabView {
            Text("Home page")
                .tabItem {
                    Label("Home page", systemImage: "house")
                }
                .tag(0)

            Text("Settings")
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
                .tag(1)
        }

        TabView(selection: $selectedTab) {
            Text("Home page")
                .tabItem {
                    Label("Home page", systemImage: "house")
                }
                .tag(0)

            Text("Settings")
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
                .tag(1)
        }

        TabView {
            NavigationView {
                Text("Home page")
                    .navigationTitle("Home page")
            }
            .tabItem {
                Label("Home page", systemImage: "house")
            }
            .tag(0)

            NavigationView {
                Text("Settings")
                    .navigationTitle("Settings")
            }
            .tabItem {
                Label("Settings", systemImage: "gear")
            }
            .tag(1)
        }

        TabView {
            Text("Home page")
                .tabItem {
                    Label("Home page", systemImage: "house")
                }
                .tag(0)

            Text("Settings")
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
                .tag(1)
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))

        TabView {
            VStack {
                HStack {
                    Text("Text 1")
                    Text("Text 2")
                }
                Text("Text 3")
            }
            .tabItem {
                Label("tab 1", systemImage: "star")
            }
            .tag(0)

            ZStack {
                Color.blue
                Text("label 2 content")
            }
            .tabItem {
                Label("tab 2", systemImage: "circle")
            }
            .tag(1)
        }
    }
}

struct TabViewContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabViewContentView()
    }
}
