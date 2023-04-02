//
//  GridContentView.swift
//  ExampleCollection
//
//  Created by link on 31/03/2023.
//

import SwiftUI

struct GridContentView: View {
    let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)

    let rows: [GridItem] = Array(repeating: .init(.fixed(50)), count: 2)

    let columns2: [GridItem] = [
        GridItem(.flexible(), spacing: 16),
        GridItem(.fixed(100), spacing: 16),
        GridItem(.flexible(), spacing: 16)
    ]

    let columns3: [GridItem] = Array(repeating: .init(.flexible()), count: 2)

    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(0 ..< 3) { index in
                    Text("Item \(index)")
                        .frame(height: 50)
                        .background(Color.blue.opacity(0.5))
                }
            }
        }

        ScrollView(.horizontal) {
            LazyHGrid(rows: rows) {
                ForEach(0 ..< 20) { index in
                    Text("Item \(index)")
                        .frame(width: 100)
                        .background(Color.blue.opacity(0.5))
                }
            }
        }

        ScrollView {
            LazyVGrid(columns: columns2, alignment: .center, spacing: 10) {
                ForEach(0 ..< 20) { index in
                    Text("Item \(index)")
                        .frame(height: 50)
                        .background(Color.blue.opacity(0.5))
                }
            }
        }

        ScrollView {
            LazyVGrid(columns: columns, spacing: 0) {
                ForEach(0 ..< 20) { index in
                    Image("moon")
                        .resizable()
//                        .scaledToFit()
                        .frame(height: CGFloat(100 + (index % 3) * 50))
                        .background(Color.blue.opacity(0.5))
                }
            }
//            .padding()
        }
    }
}

struct GridContentView_Previews: PreviewProvider {
    static var previews: some View {
        GridContentView()
    }
}
