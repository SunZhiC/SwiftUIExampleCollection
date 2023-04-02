//
//  ListSectionContentView.swift
//  ExampleCollection
//
//  Created by link on 30/03/2023.
//

import SwiftUI

struct ListSectionContentView: View {
    struct SectionItem: Identifiable {
        let id = UUID()
        let title: String
        var items: [String]
    }

    @State var sections = [
        SectionItem(title: "Section 1", items: ["List item 1", "List item 2", "List item 3"]),
        SectionItem(title: "Section 2", items: ["List item 4", "List item 5", "List item 6"])
    ]

    var body: some View {
        List {
            ForEach(Array(sections.enumerated()), id: \.offset) { sectionIndex, section in
                Section(header: Text(section.title)) {
                    ForEach(section.items, id: \.self) { item in
                        Text(item)
                    }.onDelete {
                        self.deleteItem(at: $0, in: sectionIndex)
                    }
                    .onMove { indexSet, destination in
                        self.moveItem(from: indexSet, to: destination, in: sectionIndex)
                    }
                }
            }
        }
        .listStyle(.grouped)
    }

    func deleteItem(at offsets: IndexSet, in sectionIndex: Int) {
        sections[sectionIndex].items.remove(atOffsets: offsets)
        print(sections)
    }

    func moveItem(from source: IndexSet, to destination: Int, in sectionIndex: Int) {
        sections[sectionIndex].items.move(fromOffsets: source, toOffset: destination)
        print(sections)
    }
}

struct ListSectionContentView_Previews: PreviewProvider {
    static var previews: some View {
        ListSectionContentView()
    }
}
