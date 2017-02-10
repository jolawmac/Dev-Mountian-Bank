//
//  EntryDetailViewController.swift
//  Journal
//
//  Created by Josh & Erica on 2/1/17.
//  Copyright © 2017 Josh McDonald. All rights reserved.
//

import UIKit

class EntryDetailViewController: UIViewController, UITextFieldDelegate {
    
    var entry: Entry? {
        didSet {
            updateViews()
        }
    }
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var bodyTextView: UITextView!
    
    @IBAction func clearButton(_ sender: Any) {
        titleTextField.text = ""
        bodyTextView.text = ""
    }
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        if let entry = entry {
            if let bodyText = bodyTextView.text {
                if let titleText = titleTextField.text {
                    
                    entry.text =  bodyText
                    entry.title = titleText
                }
            }
        }  else {
            let titleText = titleTextField.text
            let bodyText = bodyTextView.text
            if let bodyText = bodyText {
                if let titleText = titleText {
                    let newEntry = Entry(title: titleText, text: bodyText)
                    EntryController.sharedController.createEntryWith(entry: newEntry)
                }
            }
            
        }
    }
    //    @IBAction func savedButtonTapped(_ sender: Any) {
    //        if let entry =
    //    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
    }
    
    func updateViews() {
        if let entry = entry {
            self.titleTextField.text = entry.title
            self.bodyTextView.text = entry.text
        }
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
