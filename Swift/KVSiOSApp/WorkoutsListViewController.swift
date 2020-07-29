//
//  WorkoutsListViewController.swift
//  AWSKinesisVideoWebRTCDemoApp
//
//  Created by Ramil Garaev on 7/29/20.
//

import Foundation
import UIKit

class WorkoutsListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

}
