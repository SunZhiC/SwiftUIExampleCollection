//
//  GeometryReaderContentView.swift
//  ExampleCollection
//
//  Created by link on 31/03/2023.
//

import SwiftUI

struct GeometryReaderContentView: View {
    @State private var toggle = false

    var body: some View {
        VStack {
            GeometryReader { geometry in
                Text("Hello, SwiftUI!")
                    .frame(width: geometry.size.width / 2, height: geometry.size.height / 2, alignment: .trailing)
            }

            GeometryReader { geometry in
                VStack {
                    Text("Height: \(geometry.size.width)")
                    Text("Width: \(geometry.size.height)")
                }
            }

            GeometryReader { geometry in
                VStack {
                    if geometry.size.width > geometry.size.height {
                        Text("Landscape")
                            .font(.largeTitle)
                            .foregroundColor(.blue)
                    } else {
                        Text("Portrait")
                            .font(.title)
                            .foregroundColor(.green)
                    }
                }
            }
        }

        VStack {
            Spacer()
            Button("Toggle") {
                withAnimation(.easeInOut(duration: 1)) {
                    toggle.toggle()
                }
            }
            Spacer()
            GeometryReader { geometry in
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.blue)
                    .frame(width: 150, height: 150)
                    .offset(x: toggle ? geometry.size.width / 2 - 100 : 0)
            }
            Spacer()
        }
    }
}

struct GeometryReaderContentView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderContentView()
    }
}
