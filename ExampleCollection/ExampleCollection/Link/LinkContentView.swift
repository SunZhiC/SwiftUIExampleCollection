//
//  LinkContentView.swift
//  ExampleCollection
//
//  Created by link on 30/03/2023.
//

import SwiftUI

struct LinkContentView: View {
    var body: some View {
        VStack {
            Link("Apple", destination: URL(string: "https://www.apple.com")!)

            Link(destination: URL(string: "https://www.facebook.com")!) {
                Text("Facebook")
                    .font(.largeTitle)
                    .foregroundColor(.blue)
            }

            Link(destination: URL(string: "https://www.twitter.com")!) {
                HStack {
                    Image(systemName: "globe")
                        .resizable()
                        .frame(width: 24, height: 24)
                    Text("Twitter")
                }
            }
        }
        
        NavigationView {
            VStack {
                Link("CoinBase", destination: URL(string: "https://www.coinbase.com")!)
            }
            .navigationBarTitle("Links", displayMode: .inline)
        }
    }
}

struct LinkContentView_Previews: PreviewProvider {
    static var previews: some View {
        LinkContentView()
    }
}
