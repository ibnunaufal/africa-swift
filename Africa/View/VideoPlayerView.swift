//
//  VideoPlayerView.swift
//  Africa
//
//  Created by Macbook Pro on 25/03/2023.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    let video: Video
    var body: some View {
        VStack {
            VideoPlayer(player: playVideo(filename: video.id, fileformat: "mp4")) {
                
            }
            .overlay(
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .padding(.top, 8)
                    .padding(.horizontal, 8)
                , alignment: .topLeading
            )
        }
        
    }
}

struct VideoPlayerView_Previews: PreviewProvider {
    static var videos: [Video] = Bundle.main.decode("videos.json")
    static var previews: some View {
        VideoPlayerView(video: videos[0])
    }
}
