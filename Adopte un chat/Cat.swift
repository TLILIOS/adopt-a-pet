//
//  Cat.swift
//  Adopte un chat
//
//  Created by HAMDI TLILI on 12/08/2023.
//

import UIKit
struct Cat {
    var name: String
    var age: Int
    var gender: Gender
    var imageString: String
    var desc: String {
        return "\(gender.rawValue) agé de \(age) "
    }
    var color: UIColor {
        switch gender {
        case .male:
            return UIColor.systemTeal
        case .female:
            return UIColor.systemPink
        }
    }
    var cgColor: CGColor {
        return color.cgColor
    }
    func setImage() -> UIImage? {
        return UIImage(named: imageString)
    }
}

enum Gender: String {
    case male
    case female
}
