//
//  NotesController.swift
//  Notes
//
//  Created by Josh & Erica on 2/3/17.
//  Copyright © 2017 DevMountain. All rights reserved.
//

import Foundation

class NotesController {
    
    // Singleton 
    
    static let sharedController = NotesController()
    
    // Call load func
    init() {
        loadFromPersistenceStorage()
    }
    
    
    // CRUD!!!!!
    
    // Create a new place to put the load function arrays:
    private let notesDictionaryArrayKey = "notesDictionaryArray"
    
    // Create a place to put the notes
    var notesArray: [Notes] = []
    
    // Adding notes
    func addNotesWith(notes: String) {
        
        // Initialize into a constant, info comes from the text input from user then add it to the notesArray
        let notes = Notes(notes: notes)
        notesArray.append(notes)
        
        // Call saveToPersistenceStorage here:
        saveToPersistenceStorage()
        
    }
 
    
    func remove(notes: Notes) {
        if let index = notesArray.index(of: notes) {
            notesArray.remove(at: index)
        }
        saveToPersistenceStorage()
    }
    
    // Save func that takes array and saves them into UserDefaults
    
    func saveToPersistenceStorage() {
        
        // Create new dictionary array to make dictionary of arrays of notes
        var notesDictionaryArray: [[String: String]] = []
        
        for notes in notesArray {
            
            let notesDictionary = notes.dictionaryRepresentation
            
            // place them into the new array using .append
            notesDictionaryArray.append(notesDictionary)
            
            
            // Key and Values that go into UserDefaults: 
            UserDefaults.standard.set(notesDictionaryArray, forKey: notesDictionaryArrayKey)
        }
    }

    
    // Load func that pulls notes out of dictionary in userdefaults and put them back into the class instance (at leats I believe this is what this does :)
    func loadFromPersistenceStorage() {
        
       if let notesDictionaryArray = UserDefaults.standard.value(forKey: notesDictionaryArrayKey) as? [[String: String]] {
            var notesArray: [Notes] = []
            for notesDictionary in notesDictionaryArray {
                if let notes = Notes(dictionary: notesDictionary) {
                    notesArray.append(notes)
                }
            }
        self.notesArray = notesArray
        }
        
    }
    
    
}


