//
//  TextFieldContentView.swift
//  ExampleCollection
//
//  Created by link on 29/03/2023.
//

import SwiftUI

struct TextFieldContentView: View {
    @State private var textInput = ""

    
    var body: some View {
        VStack {
            TextField("Please input text", text: $textInput)
            TextField("Please input text", text: $textInput)
                .font(.title)
            TextField("Please input text", text: $textInput)
                .foregroundColor(.red)
            TextField("Please input text", text: $textInput)
                .background(Color.yellow)
            TextField("Please input text", text: $textInput)
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray, lineWidth: 1)
                )
            HStack {
                Image(systemName: "envelope")
                TextField("Please input email", text: $textInput)
            }
            TextField("Please input text", text: $textInput, onCommit: {
                print("Return click")
            })
            HStack {
                TextField("Please input text", text: $textInput)
                if !textInput.isEmpty {
                    Button(action: { textInput = "" }) {
                        Image(systemName: "xmark.circle.fill")
                            .foregroundColor(.gray)
                    }
                }
            }
        }
    }
}

struct TextFieldContentView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldContentView()
    }
}
