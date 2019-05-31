//
//  ViewController.swift
//  ADARateAlertView
//
//  Created by Amir Daliri on 31.05.2019.
//  Copyright © 2019 Amir Daliri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // I'm Here...
        let rateView = RatingControl()
        self.view.addSubview(rateView)

        
        rateView.translatesAutoresizingMaskIntoConstraints = false
        rateView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 90).isActive = true
        rateView.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 16).isActive = true
        rateView.rightAnchor.constraint(equalTo: self.view.leftAnchor, constant: -16).isActive = true
        rateView.heightAnchor.constraint(equalToConstant: 44).isActive = true

        rateView.starCount = 6
//        rateView.starSize = CGSize(width: 24, height: 24)
        rateView.spacing = 12.0

    }


}

