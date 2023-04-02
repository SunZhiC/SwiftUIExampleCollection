//
//  TextEditorContentView.swift
//  ExampleCollection
//
//  Created by link on 30/03/2023.
//

import SwiftUI

struct TextEditorContentView: View {
    @State private var text = "This is a TextEditor example"
    @FocusState private var isFocused: Bool

    var body: some View {
        VStack {
            TextEditor(text: $text)

            TextEditor(text: $text)
                .frame(width: 100, height: 100)

            TextEditor(text: $text)
                .font(.system(size: 18, design: .rounded))
                .foregroundColor(.purple)

            if #available(iOS 16.0, *) {
                TextEditor(text: $text)
                    .scrollContentBackground(.hidden)
                    .padding(10)
                    .background(Color.yellow)
                    .cornerRadius(10)
                    .border(Color.blue, width: 10)
                    .cornerRadius(10)
                    .padding()
            } else {
                // Fallback on earlier versions
            }

            TextEditor(text: $text)
                .onChange(of: text) { _ in
                    if !text.filter({ $0.isNewline }).isEmpty {
                        print("Found new line character")
                    }
                }

            TextEditor(text: $text)
                .onChange(of: text) { _ in
                    if text.last?.isNewline == .some(true) {
                        text.removeLast()
                        isFocused = false
                    }
                }
                .focused($isFocused)
                .submitLabel(.done)
        }
    }
}

struct TextEditorContentView_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorContentView()
    }
}
