//
//  DividerContentView.swift
//  ExampleCollection
//
//  Created by link on 30/03/2023.
//

import SwiftUI

struct DividerContentView: View {
    /// <#Description#>
    var body: some View {
        VStack {
            Text("Text 1")
            Divider()
            Text("Text 2")
        }

        VStack {
            Text("Text 3")
            Divider()
                .background(Color.red)
            Text("Text 4")
        }

        HStack {
            Text("Text 5")
            Divider()
                .frame(width: 10, height: 100)
                .background(Color.red)
            Text("Text 6")
        }

        VStack {
            Text("Text 7")
            Divider()
                .frame(height: 2)
                .background(Color.green)
            Text("Text 8")
        }
    }
}

struct DividerContentView_Previews: PreviewProvider {
    static var previews: some View {
        DividerContentView()
    }
}
