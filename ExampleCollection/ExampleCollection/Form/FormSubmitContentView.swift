//
//  FormSubmitContentView.swift
//  ExampleCollection
//
//  Created by link on 30/03/2023.
//

import SwiftUI

struct FormSubmitContentView: View {
    @State private var username = ""
    @State private var email = ""
    @State private var receiveNewsletter = true
    
    var body: some View {
        Form {
            Section(header: Text("Profile")) {
                TextField("username", text: $username)
                TextField("email", text: $email)
            }

            Section(header: Text("Preferences")) {
                Toggle("Receive newsletter", isOn: $receiveNewsletter)
            }

            Section {
                Button("Submit") {
                    print("user：\(username)")
                    print("email：\(email)")
                    print("receiveNewsletter：\(receiveNewsletter)")
                }
            }
        }
    }
}

struct FormSubmitContentView_Previews: PreviewProvider {
    static var previews: some View {
        FormSubmitContentView()
    }
}
