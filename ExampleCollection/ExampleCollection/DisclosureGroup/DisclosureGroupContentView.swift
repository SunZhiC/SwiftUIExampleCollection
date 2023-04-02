//
//  DisclosureGroupContentView.swift
//  ExampleCollection
//
//  Created by link on 31/03/2023.
//

import SwiftUI

struct DisclosureGroupContentView: View {
    @State private var isExpanded = false

    @State private var outerIsExpanded = false
    @State private var innerIsExpanded = false

    var body: some View {
        VStack {
            DisclosureGroup("Info", isExpanded: $isExpanded) {
                Text("This is message")
            }.padding()

            DisclosureGroup(content: {
                Text("This is message")
            }, label: {
                Text("Title")
                    .font(.title)
                    .foregroundColor(.blue)
            })

            List {
                DisclosureGroup("List", isExpanded: $isExpanded) {
                    ForEach(0 ..< 3) { index in
                        Text("Item \(index)")
                    }
                }
            }

            DisclosureGroup("Outer Info", isExpanded: $outerIsExpanded) {
                DisclosureGroup("Inner Info", isExpanded: $innerIsExpanded) {
                    Text("Nested Datail")
                }
            }
        }
    }
}

struct DisclosureGroupContentView_Previews: PreviewProvider {
    static var previews: some View {
        DisclosureGroupContentView()
    }
}
