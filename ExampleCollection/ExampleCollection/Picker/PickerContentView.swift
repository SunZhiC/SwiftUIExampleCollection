//
//  PickerContentView.swift
//  ExampleCollection
//
//  Created by link on 30/03/2023.
//

import SwiftUI

struct PickerContentView: View {
    @State private var selectedIndex = 0

    let options = ["Option 1", "Option 2", "Option 3"]

    var body: some View {
        VStack {
            Picker("Picker", selection: $selectedIndex) {
                ForEach(0 ..< options.count, id: \.self) { index in
                    Text(options[index]).tag(index)
                }
            }

            Picker("Horizontal picker", selection: $selectedIndex) {
                ForEach(0 ..< options.count, id: \.self) { index in
                    Text(options[index]).tag(index)
                }
            }
            .pickerStyle(.segmented)

            Picker("Wheel picker", selection: $selectedIndex) {
                ForEach(0 ..< options.count, id: \.self) { index in
                    Text(options[index]).tag(index)
                }
            }
            .pickerStyle(.wheel)

            Menu {
                Picker("Picker", selection: $selectedIndex) {
                    ForEach(0 ..< options.count, id: \.self) { index in
                        Text(options[index]).tag(index)
                    }
                }
            } label: {
                Text("Menu picker")
            }
        }
    }
}

struct PickerContentView_Previews: PreviewProvider {
    static var previews: some View {
        PickerContentView()
    }
}
