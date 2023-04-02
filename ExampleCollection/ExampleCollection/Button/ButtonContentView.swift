//
//  ButtonContentView.swift
//  ExampleCollection
//
//  Created by link on 29/03/2023.
//

import SwiftUI

struct ButtonContentView: View {
    
    @GestureState private var isPressed = false
    
    @State private var isButtonEnabled = false

    var body: some View {
        VStack {
            Button("Click me", action: {
                print("Button clicked")
            })
            Button(action: {
                print("Button clicked")
            }) {
                Text("Custom button")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            Button(action: {
                print("Image button clicked")
            }) {
                Image(systemName: "star.fill")
            }
            Button(action: {
                print("Image text button clicked")
            }) {
                HStack {
                    Image(systemName: "star.fill")
                    Text("Image text button")
                }
            }
            Button(action: {
                print("Button clicked")
            }) {
                Text("Long press button")
                    .scaleEffect(isPressed ? 0.5 : 1)
                    .animation(.easeInOut(duration: 0.9), value: isPressed)
            }
            .simultaneousGesture(LongPressGesture(minimumDuration: 0.5)
                .updating($isPressed) { value, state, _ in
                    state = value
                    print(value)
                    print("LongPress button clicked")
                }
            )

            Button(action: {
                print("Click on the enable/disable button")
            }) {
                Text("Enable/Disable button")
            }
            .disabled(!isButtonEnabled)
        }
    }
}

struct ButtonContentView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonContentView()
    }
}
