//
//  VideoListItemView.swift
//  Africa
//
//  Created by Macbook Pro on 25/03/2023.
//

import SwiftUI

struct VideoListItemView: View {
    let video: Video
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Image("video-\(video.id)")
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            
            VStack(alignment: .leading, spacing: 8) {
                Text(video.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                Text(video.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing, 8)
            }
        }// HSTACK
    }
}

struct VideoListItemView_Previews: PreviewProvider {
    static var videos: [Video] = Bundle.main.decode("videos.json")
    static var previews: some View {
        VideoListItemView(video: videos[0])
    }
}
