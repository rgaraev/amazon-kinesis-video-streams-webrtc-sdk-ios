//
//  WorkoutsGroupViewController.swift
//  AWSKinesisVideoWebRTCDemoApp
//
//  Created by Ramil Garaev on 8/11/20.
//

import Foundation
import UIKit

class WorkoutsViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    var program: Program?
    var parentVC: UIViewController?
    
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: "WorkoutCell", for: indexPath) as! WorkoutCell
        cell.configure(exercise: self.program!.exercises[indexPath.row])
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.program!.exercises.count;
      }
      
      
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
          return 1;
      }
    
     func collectionView(_ collectionView: UICollectionView,
                         layout collectionViewLayout: UICollectionViewLayout,
                         sizeForItemAt indexPath: IndexPath) -> CGSize {
        let w = 200.0
        return CGSize(width: w, height: 0.6*w)
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let playerVC = WorkoutPlayerViewController()
        playerVC.link =  self.program!.exercises[indexPath.row].link
        self.parentVC?.present(playerVC, animated: true) {        }
    }
    
    
    
}
