//
//  SliderContentView.swift
//  ExampleCollection
//
//  Created by link on 30/03/2023.
//

import SwiftUI

struct SliderContentView: View {
    @State private var sliderValue: Double = 0
    @State private var sliderStepValue: Double = 0

    var body: some View {
        VStack {
            Slider(value: $sliderValue, in: 0...100)
            Slider(value: $sliderStepValue, in: 0...100, step: 10)
            Slider(value: $sliderValue, in: 0...100)
                .accentColor(.red)
            Slider(value: $sliderValue, in: 0...100)
                .onChange(of: sliderValue) { value in
                    print("Slider value changed: \(value)")
                }
            Slider(value: $sliderValue, in: 0...100)
                .rotationEffect(.degrees(90))
            CustomSliderView(percentage: $sliderValue)
                .accentColor(.red)
                .frame(width: 200, height: 44)
        }
    }
}

struct SliderContentView_Previews: PreviewProvider {
    static var previews: some View {
        SliderContentView()
    }
}
