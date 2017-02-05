//
//  MainViewController.swift
//  Video One Example Two
//
//  Created by Josh & Erica on 2/5/17.
//  Copyright © 2017 Josh McDonald. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.cyan
        print("viewDidLoad was called")

        // Do any additional setup after loading the view.
    }

    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear was called")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear was called")
    }
    
}
