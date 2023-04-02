//
//  SpacerContentView.swift
//  ExampleCollection
//
//  Created by link on 30/03/2023.
//

import SwiftUI

struct SpacerContentView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Left text")
                Spacer()
                Text("Right text")
            }
            HStack {
                Spacer()
                Text("Right-aligned text")
            }

            HStack {
                Text("Text 1")
                Spacer(minLength: 50)
                Text("Text 2")
            }

//            ZStack(alignment: .bottomLeading) {
//                Color.green.edgesIgnoringSafeArea(.all)
//                Text("Text aligned to the bottom left corner")
//                Spacer()
//            }
        }
    }
}

struct SpacerContentView_Previews: PreviewProvider {
    static var previews: some View {
        SpacerContentView()
    }
}
