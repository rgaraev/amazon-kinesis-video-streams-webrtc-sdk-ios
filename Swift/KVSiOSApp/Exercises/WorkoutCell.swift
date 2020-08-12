//
//  WorkoutCell.swift
//  AWSKinesisVideoWebRTCDemoApp
//
//  Created by Ramil Garaev on 8/9/20.
//

import Foundation
import UIKit

class WorkoutCell: UICollectionViewCell {
    
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var name: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.name.text = "Supine Leg Crossing. Advanced"
        let urlString = "http://img.youtube.com/vi/30IYpIFLB80/3.jpg"
        if let imgURL = URL(string: urlString) {
            DispatchQueue.global().async {
                if let data = try? Data(contentsOf: imgURL) {
                    if let image = UIImage(data: data) {
                        DispatchQueue.main.async {
                            self.img.image = image
                        }
                    }
                }
            }
        }
    }
    
}
