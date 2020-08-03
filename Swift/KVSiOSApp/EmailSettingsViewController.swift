//
//  EmailSettingsViewController.swift
//  AWSKinesisVideoWebRTCDemoApp
//
//  Created by user176323 on 7/31/20.
//

import Foundation
import UIKit


class EmailSettingsViewController: UIViewController {
    
    @IBOutlet weak var EmailText : UITextField!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let userEmail = UserDefaults.standard.string(forKey: "userEmail");
        EmailText.text = (userEmail != nil) ? userEmail : "";
        
    }
    
      @IBAction func saveEmail() {
        let email = EmailText.text;
        UserDefaults.standard.set(email, forKey: "userEmail");
        navigationController?.popViewController(animated: true);
      }
      
}
