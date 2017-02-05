//
//  EmailWelcomeViewController.swift
//  ViewsAndStoryBoards
//
//  Created by Josh & Erica on 1/30/17.
//  Copyright © 2017 Josh McDonald. All rights reserved.
//

import UIKit

class EmailWelcomeViewController: UIViewController {
    
    @IBOutlet weak var emailLabel: UILabel!
    
    var emailString: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailLabel.text = emailString

        // Do any additional setup after loading the view.
    }

}
