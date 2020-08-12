//
//  Workoutself.swift
//  AWSKinesisVideoWebRTCDemoApp
//
//  Created by Ramil Garaev on 8/9/20.
//

import Foundation
import UIKit

class WorkoutCell: UICollectionViewCell {
    
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.contentView.layer.cornerRadius = 2.0
        self.contentView.layer.borderWidth = 1.0
        self.contentView.layer.borderColor = UIColor.clear.cgColor
        self.contentView.layer.masksToBounds = true;
        
        self.layer.shadowColor = UIColor.lightGray.cgColor
        self.layer.cornerRadius = 2.0
        self.layer.shadowOffset = CGSize(width:1.0,height: 1.0)
        self.layer.shadowRadius = 2.0
        self.layer.shadowOpacity = 1.0
        self.layer.masksToBounds = false
    }
    
    func configure(exercise: Exercise) {
        self.name.text = exercise.name
        let videoID = exercise.link.split(separator: "/").last
        let urlString = "http://img.youtube.com/vi/"+videoID!+"/0.jpg"
        if let imgURL = URL(string: urlString) {
            DispatchQueue.global().async {
                if let data = try? Data(contentsOf: imgURL) {
                    if let image = UIImage(data: data) {
                        DispatchQueue.main.async {
                            self.indicator.stopAnimating()
                            self.img.image = image
                        }
                    }
                }
            }
        }
    }
    
}
