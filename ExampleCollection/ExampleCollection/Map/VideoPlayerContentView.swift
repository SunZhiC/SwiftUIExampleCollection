//
//  VideoPlayerContentView.swift
//  ExampleCollection
//
//  Created by link on 31/03/2023.
//

import AVKit
import SwiftUI

struct VideoPlayerContentView: View {
    private let player = AVPlayer(url: URL(string: "https://example.com/video.mp4")!)
    @State private var isPlaying = true

    var body: some View {
        VideoPlayer(player: player)

        VideoPlayer(player: player) {
            VStack {
                Text("视频标题")
                    .font(.title)
                    .foregroundColor(.white)
                Spacer()
            }
            .padding()
        }

        VideoPlayer(player: player)
            .onAppear {
                player.actionAtItemEnd = .none
                NotificationCenter.default.addObserver(forName: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: player.currentItem, queue: .main) { _ in
                    player.seek(to: .zero)
                    player.play()
                }
            }
        
        VStack {
            VideoPlayer(player: player) {
                Text("Custom layer")
            }
            .onAppear {
                player.play()
            }
            Button(action: {
                isPlaying.toggle()
                isPlaying ? player.play() : player.pause()
            }) {
                Image(systemName: isPlaying ? "pause" : "play")
                    .font(.title)
                    .padding()
            }
        }
    }
}

struct VideoPlayerContentView_Previews: PreviewProvider {
    static var previews: some View {
        VideoPlayerContentView()
    }
}
