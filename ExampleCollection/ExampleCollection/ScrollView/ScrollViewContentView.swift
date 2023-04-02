//
//  ScrollViewContentView.swift
//  ExampleCollection
//
//  Created by link on 30/03/2023.
//

import SwiftUI

struct ScrollViewContentView: View {
    @State private var scrollToItem: Int?

    var body: some View {
        ScrollView {
            VStack {
                ForEach(1...50, id: \.self) { i in
                    Text("Item #\(i)")
                }
            }
        }

        ScrollView(.horizontal) {
            HStack {
                ForEach(1...50, id: \.self) { i in
                    Text("Item #\(i)")
                }
            }
        }

        ScrollView {
            VStack {
                ForEach(1...10, id: \.self) { i in
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(1...10, id: \.self) { j in
                                Text("Item #(\(i),\(j))")
                            }
                        }
                    }
                }
            }
        }

        ScrollView(showsIndicators: false) {
            VStack {
                ForEach(1...50, id: \.self) { i in
                    Text("Item #\(i)")
                }
            }
        }

        ScrollView {
            ScrollViewReader { (proxy: ScrollViewProxy) in
                Button("Jump to #49") {
                    proxy.scrollTo(49)
                }

                ForEach(1 ..< 101) { number in
                    Text("Item #\(number)")
                        .id(number)
                }
            }
        }

        ScrollView {
            ScrollViewReader { (proxy: ScrollViewProxy) in
                Button("Jump to #32") {
                    proxy.scrollTo(32, anchor: .top)
                }

                ForEach(1 ..< 101) { number in
                    Text("Item #\(number)")
                        .id(number)
                }
            }
        }
    }
}

struct ScrollViewContentView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewContentView()
    }
}
