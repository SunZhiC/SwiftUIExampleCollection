//
//  NavigationViewContentView.swift
//  ExampleCollection
//
//  Created by link on 30/03/2023.
//

import SwiftUI

struct NavigationViewContentView: View {
    struct DetailView: View {
        let title: String

        var body: some View {
            Text(title)
        }
    }

    var body: some View {
        NavigationView {
            Text("Main page")
                .navigationBarTitle("Navigation title", displayMode: .inline)
        }

        NavigationView {
            VStack {
                Text("Main page")

                NavigationLink(destination: Text("Detail page")) {
                    Text("Click to view details")
                }
            }
            .navigationBarTitle("Navigation title")
        }

        NavigationView {
            List(1 ... 10, id: \.self) { index in
                NavigationLink(destination: DetailView(title: "Detail page \(index)")) {
                    Text("Item \(index)")
                }
            }
            .navigationBarTitle("Navigation title")
        }

        NavigationView {
            Text("Main page")
                .navigationBarTitle("Navigation title")
                .navigationBarItems(leading: Button(action: {
                    print("plus button clicked")
                }) {
                    Image(systemName: "plus")
                }, trailing: Button(action: {
                    print("ellipsis button clicked")
                }) {
                    Image(systemName: "ellipsis.circle")
                })
        }

        NavigationView {
            Text("Main page")
                .navigationTitle("Navigation title")
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button(action: {
                            print("plus button clicked")
                        }) {
                            Image(systemName: "plus")
                        }
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            print("ellipsis button clicked")
                        }) {
                            Image(systemName: "ellipsis.circle")
                        }
                    }
                }
        }
    }
}

struct NavigationViewContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewContentView()
    }
}
