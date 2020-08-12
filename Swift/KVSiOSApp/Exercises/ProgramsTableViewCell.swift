//
//  WorkoutTableViewCell.swift
//  AWSKinesisVideoWebRTCDemoApp
//
//  Created by user176323 on 7/30/20.
//

import Foundation
import UIKit


class ProgramsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var workoutsView: UICollectionView!
    
    var collectionViewController: UICollectionViewController?
    
    
    func configure(collectionViewController: UICollectionViewController) {
        self.collectionViewController = collectionViewController
        self.workoutsView.delegate = self.collectionViewController
        self.workoutsView.dataSource = self.collectionViewController
    }
}
 
