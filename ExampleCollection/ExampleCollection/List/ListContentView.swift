//
//  ListContentView.swift
//  ExampleCollection
//
//  Created by link on 30/03/2023.
//

import SwiftUI

struct ListContentView: View {
    struct ListItem: Identifiable {
        let id = UUID()
        let title: String
    }

    let items = [
        ListItem(title: "Dynamic list item 1"),
        ListItem(title: "Dynamic list item 2"),
        ListItem(title: "Dynamic list item 3")
    ]

    var body: some View {
        VStack {
            List {
                Text("Static list item 1")
                Text("Static list item 2")
                Text("Static list item 3")
            }

            List(items) { item in
                Text(item.title)
            }

            List(0 ..< items.count, id: \.self) { index in
                Text(items[index].title)
            }
        }
    }
}

struct ListContentView_Previews: PreviewProvider {
    static var previews: some View {
        ListContentView()
    }
}
