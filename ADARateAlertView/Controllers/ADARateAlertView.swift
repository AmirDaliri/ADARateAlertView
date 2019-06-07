//
//  ADARateAlertView.swift
//  ADARateAlertView
//
//  Created by Amir Daliri on 7.06.2019.
//  Copyright © 2019 Amir Daliri. All rights reserved.
//

import Foundation
import StoreKit

let Defaults = UserDefaults.standard

struct UserDefaultsKeys {
    static let APP_OPENED_COUNT = "APP_OPENED_COUNT"
}

struct ADARateAlertView {
    static func incrementAppOpenedCount() { // called from appdelegate didfinishLaunchingWithOptions:
        guard var appOpenCount = Defaults.value(forKey: UserDefaultsKeys.APP_OPENED_COUNT) as? Int else {
            Defaults.set(1, forKey: UserDefaultsKeys.APP_OPENED_COUNT)
            return
        }
        appOpenCount += 1
        Defaults.set(appOpenCount, forKey: UserDefaultsKeys.APP_OPENED_COUNT)
    }
    static func checkAndAskForReview() { // call this whenever appropriate
        // this will not be shown everytime. Apple has some internal logic on how to show this.
        guard let appOpenCount = Defaults.value(forKey: UserDefaultsKeys.APP_OPENED_COUNT) as? Int else {
            Defaults.set(1, forKey: UserDefaultsKeys.APP_OPENED_COUNT)
            ADARateAlertView().requestReview()
            return
        }
        print(appOpenCount)
        switch appOpenCount {
        case 1:
            Defaults.set(2, forKey: UserDefaultsKeys.APP_OPENED_COUNT)
            ADARateAlertView().requestReview()
        case 2:
            Defaults.set(3, forKey: UserDefaultsKeys.APP_OPENED_COUNT)
            ADARateAlertView().requestReview()
        case 10,50:
            ADARateAlertView().requestReview()
        case _ where appOpenCount%100 == 0 :
            ADARateAlertView().requestReview()
        default:
            print("App run count is : \(appOpenCount)")
            break;
        }
        
    }
    fileprivate func requestReview() {
        if #available(iOS 10.3, *) {
            SKStoreReviewController.requestReview()
        } else {
            // Fallback on earlier versions
            // Try any other 3rd party or manual method here.
        }
    }
}
