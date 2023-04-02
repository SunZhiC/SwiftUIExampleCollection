//
//  ActionSheetContentView.swift
//  ExampleCollection
//
//  Created by link on 30/03/2023.
//

import SwiftUI
import UIKit

struct ActionSheetContentView: View {
    @State private var showActionSheet = false

    var body: some View {
//        Button("Show ActionSheet") {
//            showActionSheet = true
//        }
//        .actionSheet(isPresented: $showActionSheet) {
//            ActionSheet(title: Text("Action"),
//                        message: Text("This is a ActionSheet example"),
//                        buttons: [.default(Text("Item 1")), .default(Text("Item 2")), .cancel()])
//        }

//        Button("Show ActionSheet") {
//            showActionSheet = true
//        }
//        .actionSheet(isPresented: $showActionSheet) {
//            ActionSheet(title: Text("Action"),
//                        message: Text("Thi is a  ActionSheet with action"),
//                        buttons: [
//                            .default(Text("Button 1"), action: {
//                                print("Button 1 clicked")
//                            }),
//                            .default(Text("Button 2"), action: {
//                                print("Button 2 clicked")
//                            }),
//                            .cancel()
//                        ])
//        }

        Button("Show ActionSheet") {
            UIView.appearance(whenContainedInInstancesOf: [UIAlertController.self]).tintColor = UIColor.red
            
            showActionSheet = true
        }
        .actionSheet(isPresented: $showActionSheet) {
            ActionSheet(title: Text("Action"),
                        message: Text("This is a  ActionSheet with custom style"),
                        buttons: [
                            .default(Text("Item 1"), action: {
                                print("Item 1 executed")
                            }),
                            .default(Text("Item 2"), action: {
                                print("Item 2 executed")
                            }),
                            .cancel(Text("Cancel"))
                        ])
        }
    }
}

struct ActionSheetContentView_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetContentView()
    }
}
