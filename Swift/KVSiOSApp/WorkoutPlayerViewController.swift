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
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let y = YoutubeDirectLinkExtractor()
        y.extractInfo(for: .urlString("https://www.youtube.com/watch?v=HsQvAnCGxzY"), success: { info in
            let uri = URL(string: info.lowestQualityPlayableLink!)
            DispatchQueue.main.async {
                self.player = AVPlayer(url: uri!)
            }
            }
        ) { error in
            print(error)
        }
    }
    
}
