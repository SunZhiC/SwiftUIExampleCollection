//
//  HStackContentView.swift
//  ExampleCollection
//
//  Created by link on 30/03/2023.
//

import SwiftUI

struct HStackContentView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Text 1")
                Text("Text 2")
                Text("Text 3")
            }

            HStack(spacing: 20) {
                Text("Text 1")
                Text("Text 2")
                Text("Text 3")
            }
            HStack {
                Text("Text 1")
                Spacer()
                Text("Text 2")
                Spacer()
                Text("Text 3")
            }
            HStack(alignment: .bottom) {
                Text("Text 1")
                Text("Text 2").font(.largeTitle)
                Text("Text 3")
            }
            HStack {
                Text("Text 1")
                Text("Text 2")
                Text("Text 3")
            }
            .frame(maxWidth: .infinity)
            HStack {
                VStack {
                    Text("Text 1")
                    Text("Text 2")
                }
                VStack {
                    Text("Text 3")
                    Text("Text 4")
                }
            }
        }
    }
}

struct HStackContentView_Previews: PreviewProvider {
    static var previews: some View {
        HStackContentView()
    }
}
