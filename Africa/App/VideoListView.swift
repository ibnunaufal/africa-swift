//
//  VideoListView.swift
//  Africa
//
//  Created by Macbook Pro on 12/03/2023.
//

import SwiftUI

struct VideoListView: View {
    var body: some View {
        let videos: [Video] = Bundle.main.decode("videos.json")
        
        NavigationView(){
            List {
                ForEach(videos) { item in
                    NavigationLink(destination: VideoPlayerView(video: item)){
                        VideoListItemView(video: item)
                    }
                }
            }.navigationBarTitle("Africa", displayMode: .large)
        }
        
    }
}

struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
