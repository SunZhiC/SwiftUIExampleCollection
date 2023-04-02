//
//  GroupBoxContentView.swift
//  ExampleCollection
//
//  Created by link on 30/03/2023.
//

import SwiftUI

struct GroupBoxContentView: View {
    struct CustomGroupBoxStyle: GroupBoxStyle {
        func makeBody(configuration: Configuration) -> some View {
            GroupBox(label: configuration.label) {
                configuration.content
                    .padding()
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 10).fill(Color(.systemGroupedBackground)))
            .shadow(radius: 5)
        }
    }

    var body: some View {
        VStack {
            GroupBox {
                Text("a GroupBox exapmle")
            }
            GroupBox(label: Text("Title")) {
                Text("a GroupBox example with title")
            }
            GroupBox(label: Text("Detail")) {
                VStack(alignment: .leading, spacing: 10) {
                    Text("name：Jack")
                    Text("age：25")
                    Text("job：developer")
                }
            }
            GroupBox(label: HStack {
                Image(systemName: "info.circle")
                Text("Information")
            }) {
                VStack(alignment: .leading, spacing: 10) {
                    Text("username：johndoe")
                    Text("email：johndoe@example.com")
                }
            }

            GroupBox(label: Text("Custom style")) {
                Text("a GroupBox example with custom style")
            }
            .groupBoxStyle(CustomGroupBoxStyle())
        }
    }
}

struct GroupBoxContentView_Previews: PreviewProvider {
    static var previews: some View {
        GroupBoxContentView()
    }
}
