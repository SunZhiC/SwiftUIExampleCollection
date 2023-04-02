//
//  SectionContentView.swift
//  ExampleCollection
//
//  Created by link on 30/03/2023.
//

import SwiftUI

struct SectionContentView: View {
    @State private var toggleValue = true

    var body: some View {
        VStack {
            Form {
                Section {
                    Text("This is a Section example")
                }
            }

            Form {
                Section(header: Text("Title"), footer: Text("Description")) {
                    Text("This is Section content, This is Section content, This is Section content, This is Section content, This is Section content")
                }
            }

            Form {
                Section(header: Text("Custom style").font(.headline)) {
                    Toggle(isOn: $toggleValue) {
                        Text("Switch")
                    }
                }
                .background(Color.yellow.opacity(0.2))
                .cornerRadius(10)
                .padding()
            }
        }
    }
}

struct SectionContentView_Previews: PreviewProvider {
    static var previews: some View {
        SectionContentView()
    }
}
