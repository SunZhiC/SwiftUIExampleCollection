//
//  ToggleContentView.swift
//  ExampleCollection
//
//  Created by link on 30/03/2023.
//

import SwiftUI

struct ToggleContentView: View {
    @State private var isOn = false

    var body: some View {
        VStack {
            Toggle("Switch", isOn: $isOn)

            Toggle(isOn: $isOn) {
                Text("Custom switch")
            }
            .toggleStyle(SwitchToggleStyle(tint: .red))

            HStack {
                Text("Horizontal arranged switch").lineLimit(1)
                Spacer()
                Toggle("", isOn: $isOn)
            }

            Toggle("Switch", isOn: $isOn)
                .onChange(of: isOn) { value in
                    print("Change in on/off status: \(value)")
                }
        }
    }
}

struct ToggleContentView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleContentView()
    }
}
