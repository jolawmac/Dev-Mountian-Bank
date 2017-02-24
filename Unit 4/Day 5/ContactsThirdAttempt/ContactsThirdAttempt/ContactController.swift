//
//  ContactController.swift
//  ContactsThirdAttempt
//
//  Created by Josh & Erica on 2/24/17.
//  Copyright © 2017 Josh McDonald. All rights reserved.
//

import Foundation
class ContactController {
    
    
    let conactsWereSetNotification = Notification.Name("conactsWereSet")
    
    
    static let shared = ContactController()
    
    let cloudKitManager = CloudKitManager()
    
    var contacts: [Contact] = [] {
        didSet{
            DispatchQueue.main.async {
                NotificationCenter.default.post(name: self.conactsWereSetNotification, object: self)
            }
        }
    }
    
    init() {
        fetchContactsFromCloudKit()
    }
    
    func save(contact: Contact, completion: @escaping(Error?) -> Void) {
        
        let contactRecord = contact.cloudKitRecord
        cloudKitManager.save(contactRecord, completion: completion)
        self.contacts.insert(contact, at: 0)
    }
    
    
    
    func fetchContactsFromCloudKit() {
        
        let sortDescriptor = NSSortDescriptor(key: "name", ascending: true)
        
        cloudKitManager.fetchRecords(ofType: "Contact", sortDescriptors: [sortDescriptor]) { (records, error) in
            if let error = error { print(error.localizedDescription) }
            
            guard let records = records else { print("No records returned"); return }
            
            let contact = records.flatMap {Contact(cloudKitRecord: $0)}
            
            self.contacts = contact
            //completion()
        }
        
    }
    
    func subscibeToNewContacts() {
        cloudKitManager.subscribeToCreationOfRecords(ofType: "Contact") { (error) in
            
            if let error = error { print("Error saving subscription: \(error.localizedDescription)") }
        }
    }
    
}
