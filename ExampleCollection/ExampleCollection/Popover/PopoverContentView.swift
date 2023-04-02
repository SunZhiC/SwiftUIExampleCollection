//
//  PopoverContentView.swift
//  ExampleCollection
//
//  Created by link on 30/03/2023.
//

import SwiftUI

struct PopoverContentView: View {
    @State private var showingPopover = false

    var body: some View {
        
//            Button("Show Popover") {
//                showingPopover = true
//            }
//            .popover(isPresented: $showingPopover) {
//                Text("This is a Popover example")
//                    .padding()
//            }

//            Button("Show Popover") {
//                showingPopover = true
//            }
//            .popover(isPresented: $showingPopover) {
//                VStack {
//                    Text("Custom Popover View")
//                        .font(.title)
//                    Spacer()
//                    Button("Hide Popover") {
//                        showingPopover = false
//                    }
//                }
//                .padding()
//            }

//            Button("Show Popover") {
//                showingPopover = true
//            }
//            .popover(isPresented: $showingPopover, attachmentAnchor: .point(.topLeading)) {
//                Text("Popover attach to button bottom。")
//                    .padding()
//            }

            Button("Show Popover") {
                showingPopover = true
            }
            .popover(isPresented: $showingPopover, attachmentAnchor: .point(.bottom), arrowEdge: .bottom) {
                Text("Popover arrow bottom")
                    .padding()
            }
        
    }
}

struct PopoverContentView_Previews: PreviewProvider {
    static var previews: some View {
        PopoverContentView()
    }
}
