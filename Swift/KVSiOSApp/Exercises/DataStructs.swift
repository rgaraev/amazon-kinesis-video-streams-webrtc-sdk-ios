//
//  DataStructs.swift
//  AWSKinesisVideoWebRTCDemoApp
//
//  Created by Ramil Garaev on 8/12/20.
//

import Foundation

struct Exercise {
    var name: String
    var link: String
    
    init(name: String, link: String) {
        self.name = name
        self.link = link
    }
}


struct Program {
    var name: String
    var imageName: String
    var exercises: Array<Exercise>
    
    
    init(name: String, exercises: Array<Exercise>) {
        self.name = name
        self.exercises = exercises
        self.imageName = name.lowercased()
    }
}
