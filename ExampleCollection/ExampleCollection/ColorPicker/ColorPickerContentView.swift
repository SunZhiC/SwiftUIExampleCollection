//
//  ColorPickerContentView.swift
//  ExampleCollection
//
//  Created by link on 31/03/2023.
//

import SwiftUI

struct ColorPickerContentView: View {
    @State private var selectedColor = Color.white

    var body: some View {
//        VStack {
//            ColorPicker("Select color", selection: $selectedColor)
//            Text("Your color")
//                .foregroundColor(selectedColor)
//                .font(.largeTitle)
//                .bold()
//        }
//
//        VStack {
//            ColorPicker(selection: $selectedColor) {
//                Text("Select color")
//                    .font(.largeTitle)
//                    .foregroundColor(selectedColor)
//            }
//            Text("Your color")
//                .foregroundColor(selectedColor)
//        }

        NavigationView {
            VStack {
                ColorPicker("Select color", selection: $selectedColor)
            }
            .navigationBarTitle("Color Selector", displayMode: .inline)
        }
    }
}

struct ColorPickerContentView_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerContentView()
    }
}
