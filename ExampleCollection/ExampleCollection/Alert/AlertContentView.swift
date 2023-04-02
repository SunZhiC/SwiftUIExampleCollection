//
//  AlertContentView.swift
//  ExampleCollection
//
//  Created by link on 30/03/2023.
//

import SwiftUI

struct AlertContentView: View {
    @State private var showAlert = false

    @State private var selectedItem: String? = nil

    var body: some View {
        VStack {
//            Button("Show alert") {
//                showAlert = true
//            }
//            .alert(isPresented: $showAlert) {
//                Alert(title: Text("Alert"), message: Text("This is a message"), dismissButton: .default(Text("OK")))
//            }

            Button("Show alert") {
                showAlert = true
            }
            .alert(isPresented: $showAlert) {
                Alert(title: Text("Alert"),
                      message: Text("This is a alert with two buttons"),
                      primaryButton: .default(Text("Confirm"), action: {
                          print("Click confirm")
                      }),
                      secondaryButton: .cancel(Text("Cancel")))
            }
        }
    }
}

struct AlertContentView_Previews: PreviewProvider {
    static var previews: some View {
        AlertContentView()
    }
}
