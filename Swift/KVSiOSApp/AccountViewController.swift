//
//  AccountViewController.swift
//  AWSKinesisVideoWebRTCDemoApp
//
//  Created by user176323 on 7/31/20.
//

import Foundation
import UIKit


class AccountViewController: UITableViewController {
    
    @IBOutlet weak var userEmailLabel : UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated);
        let userEmail = UserDefaults.standard.string(forKey: "userEmail");
        userEmailLabel.text = (userEmail != nil) ? userEmail : "Not set";
    }
    
}
