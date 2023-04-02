//
//  RatingViewContentView.swift
//  ExampleCollection
//
//  Created by link on 31/03/2023.
//

import SwiftUI

struct RatingViewContentView: View {
    @State var rating: Int
    let maxRating: Int
    let onColor: Color
    let offColor: Color

    var body: some View {
        HStack {
            ForEach(1 ..< maxRating + 1, id: \.self) { index in
                Image(systemName: index > rating ? "star" : "star.fill")
                    .foregroundColor(index > rating ? offColor : onColor)
                    .onTapGesture {
                        rating = index
                        print(index)
                    }
            }
        }
    }
}

struct RatingViewContentView_Previews: PreviewProvider {
    static var previews: some View {
        RatingViewContentView(rating: 0, maxRating: 3, onColor: Color.blue, offColor: Color.blue)
            .font(.largeTitle)
    }
}
