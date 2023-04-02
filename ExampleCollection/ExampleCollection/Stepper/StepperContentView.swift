//
//  StepperContentView.swift
//  ExampleCollection
//
//  Created by link on 31/03/2023.
//

import SwiftUI

struct StepperContentView: View {
    @State private var count = 0

    var body: some View {
        VStack {
            Stepper("Count 1: \(count)", value: $count)

            Stepper("Count 2: \(count)", value: $count, in: 0 ... 100)
            
            Stepper("Count 3: \(count)", value: $count, step: 5)

            Text("Count: \(count)")
        }
    }
}

struct StepperContentView_Previews: PreviewProvider {
    static var previews: some View {
        StepperContentView()
    }
}
