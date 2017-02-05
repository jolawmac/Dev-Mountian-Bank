//
//  EmailSubmissionViewController.swift
//  ViewsAndStoryBoards
//
//  Created by Josh & Erica on 1/30/17.
//  Copyright © 2017 Josh McDonald. All rights reserved.
//

import UIKit

class EmailSubmissionViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // Make sure the segue we are going to is the email welcome view controller
        
        if segue.identifier == "toEmailWelcomeVC" {
            
            // what are we getting?
            // grab the email from the text field
            
           let email = emailTextField.text
            
            // where
            // the email welcome view controller (the email label)
            
            if let emailWelcomeVC = segue.destination as? EmailWelcomeViewController {
                
                // if it gets here it has a value
                
                emailWelcomeVC.emailString = email
                
           // } else {
            //    // the value is nil there is nothing in emailWelcomeVC
            }
        }
    }
}






