//
//  ListRefreshContentView.swift
//  ExampleCollection
//
//  Created by link on 30/03/2023.
//

import SwiftUI

struct ListRefreshContentView: View {
    struct NewsItem: Decodable, Identifiable {
        let id: Int
        let title: String
        let strap: String
    }
    
    @State private var news = [
            NewsItem(id: 0, title: "Want the latest news?", strap: "Pull to refresh!")
        ]
    
    var body: some View {
        if #available(iOS 16.0, *) {
            NavigationStack {
                List(news) { item in
                    VStack(alignment: .leading) {
                        Text(item.title)
                            .font(.headline)
                        Text(item.strap)
                            .foregroundColor(.secondary)
                    }
                }
                .refreshable {
                    do {
                        // Fetch and decode JSON into news items
                        
                        let url = URL(string: "https://www.hackingwithswift.com/samples/news-1.json")!
                        let (data, _) = try await URLSession.shared.data(from: url)
                        news = try JSONDecoder().decode([NewsItem].self, from: data)
                    } catch {
                        // Something went wrong; clear the news
                        news = []
                    }
                }
            }
        } else {
            // Fallback on earlier versions
        }
        }
}

struct ListRefreshContentView_Previews: PreviewProvider {
    static var previews: some View {
        ListRefreshContentView()
    }
}
