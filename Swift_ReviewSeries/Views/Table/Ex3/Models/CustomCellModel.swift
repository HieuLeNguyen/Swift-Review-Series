//
//  CustomCellModel.swift
//  Swift_ReviewSeries
//
//  Created by Nguyễn Văn Hiếu on 17/11/24.
//

import Foundation
import UIKit

struct CustomCellModel {
    var avatar: UIImage
    var title: String
    var description: String
    var status: MessagerStatus
    var date: String
    var verify: Bool
}

//Enume for Status (Circle, Check, Check.double, Viewed)
enum MessagerStatus: String {
    case notifi = "circle.fill"
    case sent = "done"
    case received = "done_all"
    case viewed = "eye"
    
    var image: UIImage? {
        if let UIImage = UIImage(systemName: self.rawValue) {
            return UIImage
        } else {
            return UIImage(named: self.rawValue)
        }
    }
}
