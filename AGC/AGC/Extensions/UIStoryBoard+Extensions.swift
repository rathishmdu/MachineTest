//
//  UIStoryBoard+Extensions.swift
//  AGC
//
//  Created by GIS204 on 07/11/21.
//

import Foundation
import UIKit

extension UIStoryboard {
    static var main: UIStoryboard {
        return UIStoryboard(name: "Main", bundle: nil)
    }
}

extension UIStoryboard {
    static var loginVC:LoginVC {
        guard let vc = UIStoryboard.main.instantiateViewController(withIdentifier: "LoginVC") as? LoginVC else {
            fatalError("LoginVC couldn't be found in Storyboard file")
        }
        return vc
    }
    
    static var homeVC:HomeVC {
        guard let vc = UIStoryboard.main.instantiateViewController(withIdentifier: "HomeVC") as? HomeVC else {
            fatalError("HomeVC couldn't be found in Storyboard file")
        }
        return vc
    }
}

