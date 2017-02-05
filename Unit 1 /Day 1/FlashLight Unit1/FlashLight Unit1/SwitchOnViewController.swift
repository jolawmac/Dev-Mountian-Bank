//
//  SwitchOnViewController.swift
//  FlashLight Unit1
//
//  Created by Josh & Erica on 1/30/17.
//  Copyright © 2017 Josh McDonald. All rights reserved.
//

import UIKit

class SwitchOnViewController: UIViewController {
    
    @IBOutlet weak var buttonSwitch: UIButton!
    
    var isOn: Bool = false
    
    @IBAction func switchOnButton(_ sender: Any) {
        if isOn {
            // Trying Black Diamond: Keep status bar when screen is black 
            var preferredStatusBarStyle: UIStatusBarStyle {
                return .lightContent
            }
            isOn = false
            view.backgroundColor = .black
            buttonSwitch.setTitle("On", for: .normal)
            buttonSwitch.setTitleColor(.white, for: .normal)
            buttonSwitch.backgroundColor = .green
        } else {
            isOn = true
            view.backgroundColor = .white
            buttonSwitch.setTitle("Off", for: .normal)
            buttonSwitch.setTitleColor(.black, for: .normal)
            buttonSwitch.backgroundColor = .red
        }

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        // Do any additional setup after loading the view.
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
