//
//  Place.swift
//  MyPlaces
//
//  Created by Josh & Erica on 2/2/17.
//  Copyright © 2017 Josh McDonald. All rights reserved.
//

import Foundation


class Place {
    
    private let nameKey = "name"
    private let reasonToGoKey = "reasonToGo"
    
    let name: String
    let reasonToGo: String
    
    init(name: String, reasonToGo: String) {
        self.name = name
        self.reasonToGo = reasonToGo
    }
    
/*
Saving - turn our place class into something that userDefaults can know how to store. turn class into dictionary.
*/
    
    var dictionaryRepresentation: [String: String] {
        let dictionary = [nameKey: name, reasonToGoKey: reasonToGo]
        return dictionary
    }
    
    // loading - turn the places dictionaryRep back into an instance of class Place.
    
    init?(dictionary: [String: String]) {
        if let name = dictionary[nameKey], let reasonToGo = dictionary[reasonToGoKey] {
            self.name = name
            self.reasonToGo = reasonToGo
        } else {
            return nil
        }
    }
}
