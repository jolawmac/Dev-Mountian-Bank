//
//  Notes.swift
//  Notes
//
//  Created by Josh & Erica on 2/3/17.
//  Copyright © 2017 DevMountain. All rights reserved.
//

import Foundation

class Notes: Equatable {
    
    private let notesKey = "notes"
    
    let notes: String
    
    // Initialize it
    init(notes: String) {
        self.notes = notes

    }
    
    // Class to dictioanry
    var dictionaryRepresentation: [String: String] {
        let notesDictionary = [notesKey: notes]
        return notesDictionary
    }
    
    // Dictionary back to class instance 
    init?(dictionary: [String: String]) {
        if let notes = dictionary[notesKey] {
        self.notes = notes
    } else {
    return nil
    
        }
    }

}

func ==(lhs: Notes, rhs: Notes) -> Bool {
    return lhs.notes == rhs.notes
}
