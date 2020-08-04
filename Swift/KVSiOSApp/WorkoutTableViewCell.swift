//
//  WorkoutTableViewCell.swift
//  AWSKinesisVideoWebRTCDemoApp
//
//  Created by user176323 on 7/30/20.
//

import Foundation
import UIKit
import AVKit

class WorkoutTableViewCell: UITableViewCell {
    
    var videoPlayer: AVPlayer!
    
    @IBOutlet weak var videoPlayerContainer: UIView!
    
    
    func prepare() {
        if (videoPlayer == nil) {
            let url = URL(string: "https://www.youtube.com/watch?v=FgzjxOnWYvA")!
            let asset = AVAsset(url: url)
            let playerItem = AVPlayerItem(asset: asset)
            videoPlayer =  AVPlayer(playerItem: playerItem)
            let playerLayer = AVPlayerLayer(player: videoPlayer)
            playerLayer.frame = videoPlayerContainer.bounds //bounds of the view in which AVPlayer should be displayed
            print(videoPlayerContainer.bounds)
            playerLayer.videoGravity = .resizeAspect
            videoPlayerContainer.layer.addSublayer(playerLayer)
            videoPlayer.play()
        }
    }
    
    
    
}
 
