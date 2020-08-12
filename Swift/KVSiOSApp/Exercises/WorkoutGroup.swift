//
//  WorkoutGroup.swift
//  AWSKinesisVideoWebRTCDemoApp
//
//  Created by Ramil Garaev on 8/9/20.
//

import Foundation

struct Exercise {
    var name: String
    var link: String
}


struct WorkoutGroup {
    var name: String
    var exercises: Array<Exercise>
}
