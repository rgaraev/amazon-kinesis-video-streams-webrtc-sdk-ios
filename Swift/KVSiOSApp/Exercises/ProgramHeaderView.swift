//
//  ProgramHeaderView.swift
//  AWSKinesisVideoWebRTCDemoApp
//
//  Created by Ramil Garaev on 8/12/20.
//

import Foundation
import UIKit


final class ProgramHeaderView: UITableViewHeaderFooterView {
    
    static let reuseIdentifier: String = String(describing: self)
    
    static var nib: UINib {
        return UINib(nibName: String(describing: self), bundle: nil)
    }
    
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var name: UILabel!
}
