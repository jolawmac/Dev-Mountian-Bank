//
//  ContactDetailViewController.swift
//  ContactsThirdAttempt
//
//  Created by Josh & Erica on 2/24/17.
//  Copyright © 2017 Josh McDonald. All rights reserved.
//

import UIKit

class ContactDetailViewController: UIViewController {
    
    // MARK: - Properties
    
    var contact: Contact?
    
    // MARK: - Outlet
    
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    // MARK: - Action
    

    @IBAction func saveButtonTapped(_ sender: Any) {
        guard let name = nameTextField.text,
            let email = emailTextField.text,
            let phone = phoneTextField.text else { return }
        
        let contacts = Contact(name: name, email: email, phone: phone)
        
        ContactController.shared.save(contact: contacts) { (error) in
            if let error = error { print("Error: \(error.localizedDescription)") }
            DispatchQueue.main.async {
                self.viewDidLoad()
            }
        }
        
        let _ = self.navigationController?.popViewController(animated: true)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        NotificationCenter.default.addObserver(self, selector: #selector(refreshViews), name: ContactController.shared.conactsWereSetNotification, object: nil)
    }
    
    func refreshViews() {
        guard let contact = contact else { return }
        self.nameTextField.text = contact.name
        self.emailTextField.text = contact.email
        self.phoneTextField.text = contact.phone
    }

}
