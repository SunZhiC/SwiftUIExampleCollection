//
//  ImageContentView.swift
//  ExampleCollection
//
//  Created by link on 29/03/2023.
//

import SwiftUI

struct ImageContentView: View {
    var body: some View {
        VStack {
            Image("moon")
            Image(systemName: "star.fill")
            Image("moon")
                .renderingMode(.original)
            Image("moon")
                .resizable()
                .frame(width: 100, height: 100)
//            Image("moon")
//                .resizable()
//                .scaledToFit()
//            Image("moon")
//                .resizable()
//                .scaledToFill()
            
            Image("desk")
                .frame(width: 100, height: 100)
                .clipped()
//            Image("moon")
//                .resizable()
//                .clipShape(Circle())
            Image("moon")
                .shadow(color: .gray, radius: 5, x: 0, y: 5)
            Image("moon")
                .opacity(0.5)
        }
    }
}

struct ImageContentView_Previews: PreviewProvider {
    static var previews: some View {
        ImageContentView()
    }
}
