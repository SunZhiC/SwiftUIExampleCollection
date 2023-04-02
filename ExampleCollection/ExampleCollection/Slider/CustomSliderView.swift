//
//  CustomSliderView.swift
//  ExampleCollection
//
//  Created by link on 30/03/2023.
//

import SwiftUI

struct CustomSliderView: View {
    @Binding var percentage: Double

    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle()
                    .foregroundColor(.gray)
                Rectangle()
                    .foregroundColor(.accentColor)
                    .frame(width: geometry.size.width * CGFloat(self.percentage / 100))
            }
            .cornerRadius(12)
            .gesture(DragGesture(minimumDistance: 0)
                .onChanged { value in
                    self.percentage = Double(min(max(0, Float(value.location.x / geometry.size.width * 100)), 100))
                })
        }
    }
}

struct CustomSliderView_Previews: PreviewProvider {
    static var previews: some View {
        CustomSliderView(percentage: .constant(20))
            .accentColor(.red)
            .frame(width: 200, height: 44)
    }
}
