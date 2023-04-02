//
//  MenuContentView.swift
//  ExampleCollection
//
//  Created by link on 30/03/2023.
//

import SwiftUI

struct MenuContentView: View {
    var body: some View {
        VStack {
            Menu("Action 1") {
                Text("Item 1")
                Text("Item 2")
            }

            Menu {
                Button(action: {
                    print("执行选项1")
                }) {
                    Text("选项1")
                }

                Button(action: {
                    print("执行选项2")
                }) {
                    Text("选项2")
                }
            } label: {
                HStack {
                    Text("Custom menu")
                    Image(systemName: "chevron.down")
                }
                .foregroundColor(.blue)
            }

            Menu("Action 4") {
                Button(action: {
                    print("Item 1 clicked")
                }) {
                    Text("Item 1")
                }

                Divider()

                Button(action: {
                    print("Item 2 clicked")
                }) {
                    Text("Item 2")
                }
            }

            Menu("Action 5") {
                Menu("Child list") {
                    Button(action: {
                        print("Item 1 clicked")
                    }) {
                        Text("Item 1")
                    }

                    Button(action: {
                        print("Item 2 clicked")
                    }) {
                        Text("Item 2")
                    }
                }

                Button(action: {
                    print("Item 1 clicked")
                }) {
                    Text("Item 1")
                }
            }
        }
    }
}

struct MenuContentView_Previews: PreviewProvider {
    static var previews: some View {
        MenuContentView()
    }
}
