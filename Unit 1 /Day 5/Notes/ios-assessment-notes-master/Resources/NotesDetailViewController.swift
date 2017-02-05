//
//  NotesDetailViewController.swift
//  Notes
//
//  Created by Josh & Erica on 2/3/17.
//  Copyright © 2017 DevMountain. All rights reserved.
//

import UIKit

class NotesDetailViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        if let notes = notesTextField.text {
            NotesController.sharedController.addNotesWith(notes: notes)
            clearTextField()
            
            _ = self.navigationController?.popViewController(animated: true)
        }

    }
    
    
    func clearTextField() {
        notesTextField.text = ""
    }
    
    @IBAction func clearButtonTappe(_ sender: Any) {
        notesTextField.text = ""
    }
    
    
    @IBOutlet weak var notesTextField: UITextView!
    
    var notes: Notes? {
        didSet {
//            updateViews()
        }
    }

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
        if let notes = notes {
            self.notesTextField.text = notes.notes
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
