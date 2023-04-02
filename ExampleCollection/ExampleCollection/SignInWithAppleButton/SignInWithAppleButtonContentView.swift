//
//  SignInWithAppleButtonContentView.swift
//  ExampleCollection
//
//  Created by link on 31/03/2023.
//

import AuthenticationServices
import SwiftUI

struct SignInWithAppleButtonContentView: View {
    var body: some View {
        
        SignInWithAppleButton(.continue) { _ in
            
        } onCompletion: { result in
            switch result {
            case .success(let authResults):
                print(authResults)

            case .failure(let error):
                print(error)
            }
        }.frame(width: 100, height: 50).preferredColorScheme(.light)
    }
}

struct SignInWithAppleButtonContentView_Previews: PreviewProvider {
    static var previews: some View {
        SignInWithAppleButtonContentView()
    }
}
