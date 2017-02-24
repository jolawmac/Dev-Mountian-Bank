//
//  Contact.swift
//  ContactsThirdAttempt
//
//  Created by Josh & Erica on 2/24/17.
//  Copyright © 2017 Josh McDonald. All rights reserved.
//

import Foundation
import CloudKit

class Contact {
    
    private let nameKey = "name"
    private let emailKey = "email"
    private let phoneKey = "phone"
    
    let name: String
    let email: String?
    let phone: String?
    
    init(name: String, email: String?, phone: String?) {
        
        self.name = name
        self.phone = phone
        self.email = email
        
    }
    
    
    var cloudKitRecord: CKRecord {
        
        let data = CKRecord(recordType: "Contact")
        
        data.setValue(name, forKey: nameKey)
        data.setValue(phone, forKey: phoneKey)
        data.setValue(email, forKey: emailKey)
        
        return data
    }
    
    init?(cloudKitRecord: CKRecord) {
        
        guard let name = cloudKitRecord[nameKey] as? String,
            let email = cloudKitRecord[emailKey] as? String,
            let phone = cloudKitRecord[phoneKey] as? String else { return nil }
        
        self.name = name
        self.email = email
        self.phone = phone
        
    }
    
}


