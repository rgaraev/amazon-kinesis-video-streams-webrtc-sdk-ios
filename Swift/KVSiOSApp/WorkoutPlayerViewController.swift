//
//  WorkoutPlayerViewController.swift
//  AWSKinesisVideoWebRTCDemoApp
//
//  Created by Ramil Garaev on 04.08.2020.
//

import Foundation
import UIKit
import AVKit
import YoutubeDirectLinkExtractor

class WorkoutPlayerViewController: AVPlayerViewController {
    
    var link: String?
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let y = YoutubeDirectLinkExtractor()
        y.extractInfo(for: .urlString(link!), success: { info in
            print(info.rawInfo)
            let uri = URL(string: info.lowestQualityPlayableLink!)
//            DispatchQueue.main.async {
//                self.player = AVPlayer(url: uri!)
//                self.player?.play()
//            }
            }
        ) { error in
            print(error)
        }
    }
    
}
