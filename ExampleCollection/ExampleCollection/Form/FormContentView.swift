//
//  FormContentView.swift
//  ExampleCollection
//
//  Created by link on 30/03/2023.
//

import SwiftUI

struct FormContentView: View {
    @State private var toggleValue = true
    @State private var sliderValue = 0.5
    @State private var pickerSelection = 1

    var body: some View {
        VStack {
            Form {
                Text("This is a Form example")
            }
            Form {
                Section(header: Text("Section 1")) {
                    Text("Item 1")
                    Text("Item 2")
                }

                Section(header: Text("Section 2")) {
                    Text("Item 3")
                    Text("Item 4")
                }
            }

            Form {
                Toggle(isOn: $toggleValue) {
                    Text("Switch")
                }

                Slider(value: $sliderValue, in: 0 ... 1) {
                    Text("Slider")
                }

                Picker(selection: $pickerSelection, label: Text("Picker")) {
                    Text("Item 1").tag(1)
                    Text("Item 2").tag(2)
                }
            }
        }
    }
}

struct FormContentView_Previews: PreviewProvider {
    static var previews: some View {
        FormContentView()
    }
}
