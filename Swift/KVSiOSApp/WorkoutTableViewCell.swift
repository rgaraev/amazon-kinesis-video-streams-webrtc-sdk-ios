//
//  WorkoutTableViewCell.swift
//  AWSKinesisVideoWebRTCDemoApp
//
//  Created by user176323 on 7/30/20.
//

import Foundation
import UIKit


class WorkoutTableViewCell: UITableViewCell {
    
    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!

    @IBOutlet weak var containerView: UIView! {
        didSet {
            // Make it card-like
            containerView.layer.cornerRadius = 10
            containerView.layer.shadowOpacity = 1
            containerView.layer.shadowRadius = 2
            containerView.layer.shadowColor = UIColor.black.cgColor
            containerView.layer.shadowOffset = CGSize(width: 3, height: 3)
            containerView.layer.masksToBounds = true
        }
    }
    
    
    func updateImage(url: URL) {
        
    }
   
}
 
