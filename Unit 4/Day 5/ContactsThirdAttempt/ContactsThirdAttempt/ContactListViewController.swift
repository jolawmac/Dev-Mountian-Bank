//
//  ContactListViewController.swift
//  ContactsThirdAttempt
//
//  Created by Josh & Erica on 2/24/17.
//  Copyright © 2017 Josh McDonald. All rights reserved.
//

import UIKit

class ContactListTableViewController: UITableViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        ContactController.shared.fetchContactsFromCloudKit()
            DispatchQueue.main.async {
                self.tableView.reloadData()
        }
        
    }
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ContactController.shared.contacts.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        
        let contact = ContactController.shared.contacts[indexPath.row]
        cell.textLabel?.text = contact.name
        cell.detailTextLabel?.text = "Number is: \(contact.name), Email is: \(contact.email)"
        
        return cell
    }
    
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toContactDetail" {
            
            guard let indexPath = tableView.indexPathForSelectedRow, let contactDetailVC = segue.destination as? ContactDetailViewController else { return }
            
            let contact = ContactController.shared.contacts[indexPath.row]
            
            contactDetailVC.contact = contact
            
            
        }
    }
    
    
}
