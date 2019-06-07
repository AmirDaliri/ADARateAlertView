//
//  VC.swift
//  ADARateAlertView
//
//  Created by Amir Daliri on 31.05.2019.
//  Copyright © 2019 Amir Daliri. All rights reserved.
//

import UIKit

class VC: UIViewController {
    
    // MARK: - Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // I'm Here...
        setupView()
    }
    
    func setupView() {
        view.backgroundColor = .white
        title = "ADARateAlertView"
        let button = UIButton(type: .custom)
        button.setTitle("Rate Me", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.layer.masksToBounds = true
        button.layer.cornerRadius = 12.0
        button.layer.borderWidth = 1.0
        button.layer.borderColor = UIColor.lightGray.cgColor
        button.addTarget(self, action: #selector(rateUsButtonClicked(_:)), for: .touchUpInside)
        self.view.addSubview(button)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        button.widthAnchor.constraint(equalToConstant: 190).isActive = true
        button.heightAnchor.constraint(equalToConstant: 45).isActive = true
    }

    @objc func rateUsButtonClicked(_ sender: UIButton) {
        ADARateAlertView.checkAndAskForReview()
    }
}
