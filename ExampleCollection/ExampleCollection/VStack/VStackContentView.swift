//
//  VStackContentView.swift
//  ExampleCollection
//
//  Created by link on 30/03/2023.
//

import SwiftUI

struct VStackContentView: View {
    var body: some View {
        // Use case is the same with HStack
        VStack {
            Text("Text 1")
            Text("Text 2")
            Text("Text 3")
        }
    }
}

struct VStackContentView_Previews: PreviewProvider {
    static var previews: some View {
        VStackContentView()
    }
}
