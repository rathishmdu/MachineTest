//
//  AppDelegate.swift
//  AGC
//
//  Created by GIS204 on 07/11/21.
//

import UIKit
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let logVC =  UIStoryboard.loginVC
        self.window?.rootViewController = logVC
        return true
    }

}

