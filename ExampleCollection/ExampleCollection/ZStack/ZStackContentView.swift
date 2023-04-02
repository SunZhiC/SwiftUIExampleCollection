//
//  ZStackContentView.swift
//  ExampleCollection
//
//  Created by link on 30/03/2023.
//

import SwiftUI

struct ZStackContentView: View {
    var body: some View {
        VStack {
            ZStack {
                Text("Text 1")
                Text("Text 2")
                Text("Text 3")
            }

            ZStack {
                Color.green.edgesIgnoringSafeArea(.all)

                VStack {
                    Text("Text 1")
                    Text("Text 2")
                    Text("Text 3")
                }
            }

            ZStack(alignment: .bottomTrailing) {
                Color.yellow.edgesIgnoringSafeArea(.all)

                VStack {
                    Text("Text 1")
                    Text("Text 2")
                    Text("Text 3")
                }

                Button("Button") {
                    print("Button clicked")
                }
                .padding()
            }

            ZStack {
                Image("moon")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)

                Text("Hello, World!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            }

            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.blue)
                    .frame(width: 300, height: 200)

                VStack {
                    Text("Title")
                        .font(.largeTitle)
                        .foregroundColor(.white)

                    Text("Subtitle")
                        .font(.title)
                        .foregroundColor(.white)
                }
            }
        }
    }
}

struct ZStackContentView_Previews: PreviewProvider {
    static var previews: some View {
        ZStackContentView()
    }
}
