//
//  TextContentView.swift
//  ExampleCollection
//
//  Created by link on 29/03/2023.
//

import SwiftUI

struct TextContentView: View {
    var body: some View {
        VStack {
            Text("Hello, SwiftUI!")
            Text("Hello, SwiftUI!")
                .font(.title)
            Text("Hello, SwiftUI!")
                .foregroundColor(.red)
            Text("Hello, SwiftUI!")
                .fontWeight(.bold)
            Text("Hello, SwiftUI!")
                .shadow(color: .gray, radius: 2, x: 0, y: 2)
            Text("Hello, SwiftUI!")
                .frame(width: 200, height: 100, alignment: .center)
            Text("Hello, SwiftUI! This is a long text that needs to wrap or truncate.")
                .lineLimit(2)
                .truncationMode(.tail)
            Text("greeting_text")
        }
        .padding()
    }
}

struct TextContentView_Previews: PreviewProvider {
    static var previews: some View {
        TextContentView()
    }
}
