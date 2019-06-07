//
//  AppDelegate.swift
//  ADARateAlertView
//
//  Created by Amir Daliri on 31.05.2019.
//  Copyright © 2019 Amir Daliri. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let nav = UINavigationController.init(rootViewController: VC())
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = nav
        self.window?.makeKeyAndVisible()
        
        return true
    }
}

