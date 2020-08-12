//
//  WorkoutsListViewController.swift
//  AWSKinesisVideoWebRTCDemoApp
//
//  Created by Ramil Garaev on 7/29/20.
//

import Foundation
import UIKit



class ProgramsListViewController: UITableViewController {

    let fakeData: Array<Program> = [Program(name: "TRUNK", exercises: [Exercise(name: "Sitting Trunk Rotations", link: "https://youtu.be/W7c4cMqAAcE"),
                                                                       Exercise(name: "Supported Mini Squats", link: "https://youtu.be/dmCDFmY8R5s"),
                                                                       Exercise(name: "Supported Mini Squats. Advanced", link: "https://youtu.be/UpuKzkav-tA"),
                                                                        Exercise(name: "Sit to Stand", link: "https://youtu.be/D84rhCIxeD0"),
                                                                        Exercise(name: "Dynamic Weight Shifts", link: "https://youtu.be/IZR8EhvhdQM"),
                                                                        Exercise(name: "Dynamic Weight Shifts. Advanced", link: "https://youtu.be/_Bs1n7vL6e4"),
                                                                        Exercise(name: "Staggered Stance", link: "https://youtu.be/v8jC5t-iSpU"),
                                                                        Exercise(name: "Staggered Stance. Advanced", link: "https://youtu.be/TcYP8aZfXo0"),
                                                                        Exercise(name: "Standing: Feet Together, Eyes Open/Closed", link: "https://youtu.be/QsH9ASjT9Ic"),
                                                                        Exercise(name: "Calf Stretch", link: "https://youtu.be/4gwrchpJFSY"),
                                                                        Exercise(name: "Single Leg Mini Squats", link: "https://youtu.be/_tb5ufIZmuA"),
                                                                        Exercise(name: "Getting Up From a Fall", link: "https://youtu.be/uBrSEKI1AJw"),
                                                                        Exercise(name: "Sitting Weight Bearing Elbow", link: "https://youtu.be/EUBTD9aFNT0"),
                                                                        Exercise(name: "Sitting Weight Bearing Elbow. Advanced", link: "https://youtu.be/g0lAGcM1A5k"),
                                                                        Exercise(name: "Single Leg Stance", link: "https://youtu.be/wx-xWnOQWhA"),
                                                                        Exercise(name: "Single Leg Stance. Advanced", link: "https://youtu.be/cycpwY5b-Lc"),
                                                                        Exercise(name: "Bridge Weight Shifts", link: "https://youtu.be/1o_wC0L9Gv0"),
                                                                        Exercise(name: "Quadruped Weight Shifts", link: "https://youtu.be/crLv0KEUZl4"),
                                                                        Exercise(name: "Quadruped Weight Shifts. Advanced", link: "https://youtu.be/h_N2bGWm8jM")]),
                                    Program(name: "HAND", exercises: [
                                                                        Exercise(name: "Resisted Supine Diagonal Shoulder Flexion", link: "https://youtu.be/FaR6MYsaFkg"),
                                                                        Exercise(name: "Resisted Supine Diagonal Shoulder Flexion. Advanced", link: "https://youtu.be/knFVwN3Bsbo"),
                                                                        Exercise(name: "Supine Elbow Flexion Extension", link: "https://youtu.be/mHYfekqLikk"),
                                                                        Exercise(name: "Supine Elbow Flexion Extension. Advanced", link: "https://youtu.be/zdiLyheVu-o"),
                                                                        Exercise(name: "Supine Shoulder Flexion AROM. Advanced", link: "https://youtu.be/dyokMYtv8Go")]),
                                    Program(name: "ARM", exercises: [
                                                                    Exercise(name: "Crumbling a Piece of Paper", link: "https://youtu.be/XLVtWTjyixk"),
                                                                    Exercise(name: "Supported Reaching and Grasping", link: "https://youtu.be/b2-NvupCrJ8"),
                                                                    Exercise(name: "Supported Reaching and Grasping. Advanced", link: "https://youtu.be/i0PxZcCs0RU")]),
                                    Program(name: "LEG", exercises: [
                                                                    Exercise(name: "Standing Hip Abduction", link: "https://youtu.be/_HuCnDNdZ0k"),
                                                                    Exercise(name: "Standing Hip Abduction. Advanced", link: "https://youtu.be/0kFY4CEM-GA"),
                                                                    Exercise(name: "Mini Lunge", link: "https://youtu.be/xFWUVXTFk9c"),
                                                                    Exercise(name: "Mini Lunge. Advanced", link: "https://youtu.be/6e_AfpGsWh0"),
                                                                    Exercise(name: "Side Laying Knee Flexion", link: "https://youtu.be/G_5vhflXrZs"),
                                                                    Exercise(name: "Side Laying Knee Flexion. Advanced", link: "https://youtu.be/l4R1_1mouHo"),
                                                                    Exercise(name: "Side Laying Hip Flexion with Affected Leg on Top", link: "https://youtu.be/33P3JdvRSf0"),
                                                                    Exercise(name: "Side Laying Hip Flexion with Affected Leg on Top. Advanced", link: "https://youtu.be/x8fdaFHXygs"),
                                                                    Exercise(name: "Supine Heal Slides", link: "https://youtu.be/LFqo76mjTxI"),
                                                                    Exercise(name: "Supine Heal Slides. Advanced", link: "https://youtu.be/N7IcXRTECpM"),
                                                                    Exercise(name: "Supine Knees Side to Side", link: "https://youtu.be/_Z_DihI8xJg"),
                                                                    Exercise(name: "Supine Knees Side to Side. Advanced", link: "https://youtu.be/NHsn0fC61SQ"),
                                                                    Exercise(name: "Supine Leg Crossing", link: "https://youtu.be/0tOHvWwhJrk"),
                                                                    Exercise(name: "Supine Leg Crossing. Advanced", link: "https://youtu.be/30IYpIFLB80")])
    ]
    
    var workoutsViewControllers : Array<WorkoutsViewController> = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(
            ProgramHeaderView.nib,
            forHeaderFooterViewReuseIdentifier:
            ProgramHeaderView.reuseIdentifier
        )
        for program in fakeData {
            let vc = WorkoutsViewController()
            vc.parentVC = self
            vc.program = program
            self.workoutsViewControllers.append(vc)
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return fakeData.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: ProgramsTableViewCell =  tableView.dequeueReusableCell(withIdentifier: "WorkoutGroupCell", for: indexPath) as! ProgramsTableViewCell
        cell.configure(collectionViewController: self.workoutsViewControllers[indexPath.section] as WorkoutsViewController)
        return cell;
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150.0
    }
    
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        guard let view = tableView.dequeueReusableHeaderFooterView(
                            withIdentifier: ProgramHeaderView.reuseIdentifier)
                            as? ProgramHeaderView
        else {
            return nil
        }
        view.name.text = fakeData[section].name
        view.img.image = UIImage(named: fakeData[section].imageName)
        return view
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 55.0
    }
}
 
