//
//  EntryController.swift
//  Journal
//
//  Created by Josh & Erica on 2/1/17.
//  Copyright © 2017 Josh McDonald. All rights reserved.
//

import Foundation

class EntryController {
    
    static let sharedController = EntryController()
    
    init() {
        loadFromPersistentStorage()
    }
    
    private let journalKey = "journal"
    
    var entryArray: [Entry] = []
    
    func createEntryWith(entry: Entry) {
//        let newEntry = Entry(title: title, text: andText)
        entryArray.append(entry)
        saveToPersistentStorage()
    }
    
    
    func remove(entry: Entry) {
        if let index = entryArray.index(of: entry) {
            entryArray.remove(at: index)
        }
        saveToPersistentStorage()
    }
    
    
    func saveToPersistentStorage() {
        var journalArrayEntries: [[String: Any]] = []
        for entry in entryArray {
            let jounralDictionary = entry.dictionaryRepresentation
            journalArrayEntries.append(jounralDictionary)
        }
        
        
        UserDefaults.standard.set(journalArrayEntries, forKey: journalKey)
    }
    
    func loadFromPersistentStorage() {
        if let journalArrayDictionary = UserDefaults.standard.object(forKey: journalKey) as? [[String: Any]] {
            var entryArray: [Entry] = []
            for journalDictionary in journalArrayDictionary {
                if let journalEntry = Entry(dictionary: journalDictionary as [String : AnyObject]) {
                entryArray.append(journalEntry)
            }
        }
            self.entryArray = entryArray
    }
    
}
}
