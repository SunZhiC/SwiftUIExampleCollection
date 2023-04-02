//
//  ProgressViewContentView.swift
//  ExampleCollection
//
//  Created by link on 30/03/2023.
//

import SwiftUI

struct ProgressViewContentView: View {
    @State private var progress = 0.0

    let workoutDateRange = Date() ... Date().addingTimeInterval(5 * 60)

    let progresses: [Double] = [0.2, 0.5, 0.7, 0.9]

    var body: some View {
        VStack {
            ProgressView(value: 0.1, total: 1.0)
            ProgressView(value: 0.3, total: 1.0)
                .progressViewStyle(LinearProgressViewStyle(tint: .red))
            ProgressView(value: 1, total: 1.0)
                .progressViewStyle(CircularProgressViewStyle(tint: .green))
            ProgressView()
            ProgressView()
                .progressViewStyle(CircularProgressViewStyle())
            ProgressView("Loading...", value: 0.6, total: 1.0)
            ProgressView(value: progress, total: 1.0)

            if #available(iOS 16.0, *) {
                ProgressView(timerInterval: workoutDateRange) {
                    Text("Workout")
                }
            } else {
                // Fallback on earlier versions
            }

            Button("Add progress") {
                if progress < 1.0 {
                    progress += 0.1
                }
            }
            .padding(.top)

            ForEach(progresses, id: \.self) { progress in
                ProgressView(value: progress)
                    .padding(.bottom)
            }
        }
    }
}

struct ProgressViewContentView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressViewContentView()
    }
}
