//
//  WorkoutsGroupViewController.swift
//  AWSKinesisVideoWebRTCDemoApp
//
//  Created by Ramil Garaev on 8/11/20.
//

import Foundation
import UIKit

class WorkoutsViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {


    var parentVC: UIViewController?
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: "WorkoutCell", for: indexPath)
               cell.contentView.layer.cornerRadius = 2.0
               cell.contentView.layer.borderWidth = 1.0
               cell.contentView.layer.borderColor = UIColor.clear.cgColor
               cell.contentView.layer.masksToBounds = true;

               cell.layer.shadowColor = UIColor.lightGray.cgColor
               cell.layer.cornerRadius = 2.0
                cell.layer.shadowOffset = CGSize(width:1.0,height: 1.0)
               cell.layer.shadowRadius = 2.0
               cell.layer.shadowOpacity = 1.0
               cell.layer.masksToBounds = false;
               cell.layer.shadowPath = UIBezierPath(roundedRect:cell.bounds, cornerRadius:cell.contentView.layer.cornerRadius).cgPath
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
          return 8;
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
        playerVC.link = "https://youtu.be/30IYpIFLB80"
        self.parentVC?.present(playerVC, animated: true) {        }
    }
    
    
    
}
