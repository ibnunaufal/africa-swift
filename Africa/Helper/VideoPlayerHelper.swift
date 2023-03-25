//
//  VideoPlayerHelper.swift
//  Africa
//
//  Created by Macbook Pro on 25/03/2023.
//

import Foundation
import AVKit

var videoPlayer: AVPlayer?

func playVideo(filename: String, fileformat: String) -> AVPlayer {
    if Bundle.main.url(forResource: filename, withExtension: fileformat) != nil {
        videoPlayer = AVPlayer(url: Bundle.main.url(forResource: filename, withExtension: fileformat)!)
        videoPlayer?.play()
    }
    return videoPlayer!
}
