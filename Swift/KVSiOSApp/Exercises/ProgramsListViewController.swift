//
//  WorkoutsListViewController.swift
//  AWSKinesisVideoWebRTCDemoApp
//
//  Created by Ramil Garaev on 7/29/20.
//

import Foundation
import UIKit



class ProgramsListViewController: UITableViewController {

    
    let fakeData: Array<Array<String>> = [
        ["Crumbling a Piece of Paper","https://youtu.be/XLVtWTjyixk"],
        ["Sitting Trunk Rotations","https://youtu.be/W7c4cMqAAcE"],
        ["Supported Reaching and Grasping","https://youtu.be/b2-NvupCrJ8"],
        ["Supported Reaching and Grasping. Advanced","https://youtu.be/i0PxZcCs0RU"],
        ["Supported Mini Squats","https://youtu.be/dmCDFmY8R5s"],
        ["Supported Mini Squats. Advanced","https://youtu.be/UpuKzkav-tA"],
        ["Standing Hip Abduction","https://youtu.be/_HuCnDNdZ0k"],
        ["Standing Hip Abduction. Advanced","https://youtu.be/0kFY4CEM-GA"],
        ["Sit to Stand","https://youtu.be/D84rhCIxeD0"],
        ["Dynamic Weight Shifts","https://youtu.be/IZR8EhvhdQM"],
        ["Dynamic Weight Shifts. Advanced","https://youtu.be/_Bs1n7vL6e4,uploaded later"],
        ["Staggered Stance","https://youtu.be/v8jC5t-iSpU"],
        ["Staggered Stance. Advanced","https://youtu.be/TcYP8aZfXo0,uploaded later"],
        ["Standing: Feet Together, Eyes Open/Closed","https://youtu.be/QsH9ASjT9Ic"],
        ["Calf Stretch","https://youtu.be/4gwrchpJFSY"],
        ["Single Leg Mini Squats","https://youtu.be/_tb5ufIZmuA"],
        ["Getting Up From a Fall","https://youtu.be/uBrSEKI1AJw"],
        ["Sitting Weight Bearing Elbow","https://youtu.be/EUBTD9aFNT0"],
        ["Sitting Weight Bearing Elbow. Advanced","https://youtu.be/g0lAGcM1A5k,uploaded later"],
        ["Single Leg Stance","https://youtu.be/wx-xWnOQWhA"],
        ["Single Leg Stance. Advanced","https://youtu.be/cycpwY5b-Lc"],
        ["Mini Lunge","https://youtu.be/xFWUVXTFk9c"],
        ["Mini Lunge. Advanced","https://youtu.be/6e_AfpGsWh0"],
        ["Bridge Weight Shifts","https://youtu.be/1o_wC0L9Gv0"],
        ["Quadruped Weight Shifts","https://youtu.be/crLv0KEUZl4"],
        ["Quadruped Weight Shifts. Advanced","https://youtu.be/h_N2bGWm8jM"],
        ["Resisted Supine Diagonal Shoulder Flexion","https://youtu.be/FaR6MYsaFkg"],
        ["Resisted Supine Diagonal Shoulder Flexion. Advanced","https://youtu.be/knFVwN3Bsbo"],
        ["Side Laying Knee Flexion","https://youtu.be/G_5vhflXrZs"],
        ["Side Laying Knee Flexion. Advanced","https://youtu.be/l4R1_1mouHo"],
        ["Side Laying Hip Flexion with Affected Leg on Top","https://youtu.be/33P3JdvRSf0"],
        ["Side Laying Hip Flexion with Affected Leg on Top. Advanced","https://youtu.be/x8fdaFHXygs"],
        ["Supine Elbow Flexion Extension","https://youtu.be/mHYfekqLikk"],
        ["Supine Elbow Flexion Extension. Advanced","https://youtu.be/zdiLyheVu-o"],
        ["Supine Heal Slides","https://youtu.be/LFqo76mjTxI"],
        ["Supine Heal Slides. Advanced","https://youtu.be/N7IcXRTECpM"],
        ["Supine Knees Side to Side","https://youtu.be/_Z_DihI8xJg"],
        ["Supine Knees Side to Side. Advanced","https://youtu.be/NHsn0fC61SQ"],
        ["Supine Leg Crossing","https://youtu.be/0tOHvWwhJrk"],
        ["Supine Leg Crossing. Advanced","https://youtu.be/30IYpIFLB80"],
        ["Supine Shoulder Flexion AROM. Advanced","https://youtu.be/dyokMYtv8Go"]
    ]
    
    var workoutsViewControllers : Array<WorkoutsViewController> = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let vc = WorkoutsViewController()
        vc.parentVC = self
        self.workoutsViewControllers.append(vc)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: ProgramsTableViewCell =  tableView.dequeueReusableCell(withIdentifier: "WorkoutGroupCell", for: indexPath) as! ProgramsTableViewCell
        cell.configure(collectionViewController: self.workoutsViewControllers[0] as WorkoutsViewController)
//        cell.titleLabel?.text = fakeData[indexPath.row][0]
        return cell;
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150.0
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Trunk"
    }
    
    
    
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let playerVC = WorkoutPlayerViewController()
//        playerVC.link = fakeData[indexPath.row][1]
//        self.present(playerVC, animated: true) {
//
//        }
//    }
    
//    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
//        let videoID = fakeData[indexPath.row][1].components(separatedBy: "/").last
//        print(videoID)
//        let urlString = "http://img.youtube.com/vi/\(videoID!)/0.jpg"
//        if let imgURL = URL(string: urlString) {
//            DispatchQueue.global().async {
//                if let data = try? Data(contentsOf: imgURL) {
//                    if let image = UIImage(data: data) {
//                        DispatchQueue.main.async {
//                            (cell as! WorkoutTableViewCell).img.image = image
//                        }
//                    }
//                }
//            }
//        }
//    }
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        
    }

    
    
}


/*
 [
 [
  "Quadruped Weight Shifts","https://www.youtube.com/watch?v=h-DPiXhyDv8&list=PLrDeLRAEJG0ZbA7P-q2h5gQZEFA611PUN&index=20&t=0s"
 ],
 ["Dynamic Weight Shifts","https://youtu.be/BEd-TMi7Le0"],
 ["Side Lying Knee Flexion","https://www.youtube.com/watch?v=6BzBTUPqOPE&list=PLrDeLRAEJG0ZbA7P-q2h5gQZEFA611PUN&index=24&t=0s"],
 ["Supine Leg Crossing","https://www.youtube.com/watch?v=bWUrxgAE-do&list=PLrDeLRAEJG0ZbA7P-q2h5gQZEFA611PUN&index=29&t=0s"],
 
 ["Side Laying Hip Flexion with Affected Leg on Top","https://www.youtube.com/watch?v=nJ128SOjSDU&list=PLrDeLRAEJG0ZbA7P-q2h5gQZEFA611PUN&index=25&t=0s"],
     ["Supine Shoulder Flexion AROM","https://www.youtube.com/watch?v=6iEEWUjOkC0&list=PLrDeLRAEJG0ZbA7P-q2h5gQZEFA611PUN&index=30&t=0s"],
     ["Sit to Stand","https://www.youtube.com/watch?v=FgzjxOnWYvA&feature=youtu.be"],
     ["Mini-Lunge","https://www.youtube.com/watch?v=R3YEDs3Y7MI&feature=youtu.be"],
     ["Standing: Feet Together","https://www.youtube.com/watch?v=STBFBCCMXIA&feature=youtu.be"],
     ["Bridge Weight Shifts","https://www.youtube.com/watch?v=vT0tcOv4Zeo&list=PLrDeLRAEJG0ZbA7P-q2h5gQZEFA611PUN&index=19&t=0s"],
     ["Sitting Weight Bearing Elbow Flexion and Extension","https://www.youtube.com/watch?v=5rYDXxXO09U&feature=youtu.be"],
     ["Getting Up from a Fall","https://www.youtube.com/watch?v=2Z46M1WvmvQ&feature=youtu.be"],
     ["Resisted Supine Diagonal Shoulder Flexion","https://www.youtube.com/watch?v=MS2hx7dOAes"],
     ["Crumbling a Piece of Paper","https://youtu.be/gqBHIX-2xHY"],
     ["Single Leg Stance","https://www.youtube.com/watch?v=78PpqNX_t0w&feature=youtu.be"],
     ["Supported Mini Squats","https://www.youtube.com/watch?v=gfzxMtHnRpI&feature=youtu.be"],
     ["Staggered Stance","https://www.youtube.com/watch?v=YU0xhG3R92c&feature=youtu.be"],
     ["Standing Hip Abduction with Support","https://youtu.be/6z2BSlkkwgg"],
     ["Supine Heel Slides","https://www.youtube.com/watch?v=Awtwxl3xd0U&list=PLrDeLRAEJG0ZbA7P-q2h5gQZEFA611PUN&index=27&t=0s"],
     ["Shoulder Horizontal Range of Motion","https://www.youtube.com/watch?v=BVDOcQJ-1v8&list=PLrDeLRAEJG0ZbA7P-q2h5gQZEFA611PUN&index=22&t=0s"],
     ["Sitting Trunk Rotations","https://youtu.be/dekQnnbLyus"],
     ["Swiss Ball Weight Shifts","https://www.youtube.com/watch?v=YyDhtHNwDKc&feature=youtu.be"],
     ["Calf Stretch","https://www.youtube.com/watch?v=j4ytUXLf_1w&feature=youtu.be"],
     ["Single Leg Mini Squats with Support","https://www.youtube.com/watch?v=L7wvxXBvnzc&feature=youtu.be"],
     ["Supine Elbow Flexion/Extension","https://www.youtube.com/watch?v=dfBBBIlBmP4&list=PLrDeLRAEJG0ZbA7P-q2h5gQZEFA611PUN&index=26&t=0s"],
     ["Supine Knees Side to Side","https://www.youtube.com/watch?v=MzRmK2IK3-Q&list=PLrDeLRAEJG0ZbA7P-q2h5gQZEFA611PUN&index=28&t=0s"],
     ["Small Step-Ups with Support","https://www.youtube.com/watch?v=rFJ8JJCdYx0&feature=youtu.be"]
 ]
 */
