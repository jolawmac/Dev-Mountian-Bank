//
//  PlaceController .swift
//  MyPlaces
//
//  Created by Josh & Erica on 2/2/17.
//  Copyright © 2017 Josh McDonald. All rights reserved.
//

import Foundation


class PlaceController {
    
    
    
    // singleton 
    
    static let sharedController = PlaceController()
    
    // crud 
    
    var placesArray: [Place] = []
    
    private let placesDictionaryArrayKey = "placesDictionaryArray"
    
    init() {
    loadFromPersistenceStore()
    }
    
    func addPlaceWith(name: String, reasonToGo: String) {
        // create a place 
        
        
        // to initialize create constant then call it using class name then () 
        // info comes from text fields
        
        let place = Place(name: name, reasonToGo: reasonToGo)
        
        // add it to the placesArray
        
        placesArray.append(place)
        
        // call the savetopersistence func so that the place is immediately saved into the phone's hard drive.
        saveToPersistenceStore()
        
    }
    
    
    // the goal is to take our placesArray and save them into userdefaults (Note that we must convert the places into someth9ing that UserDefaults can actually store)
    
    func saveToPersistenceStore() {
        var placesDictionaryArray: [[String: String]] = []
        
        for place in placesArray {
            
            let placeDictionary = place.dictionaryRepresentation
            
            placesDictionaryArray.append(placeDictionary)
        }
        
        // two things go into userdefault: Key and a Value 
        UserDefaults.standard.set(placesDictionaryArray, forKey: placesDictionaryArrayKey)
    }
    
    
    // goal is to get place dictionaries out of userdefaults, turn them back into insstances of the place class and set the placesArray with them.
    func loadFromPersistenceStore() {
    
        if let placeDictionaryArray =  UserDefaults.standard.value(forKey: placesDictionaryArrayKey) as? [[String: String]] {
            var placesArray: [Place] = []
            for placeDictionary in placeDictionaryArray {
                if let place = Place(dictionary: placeDictionary) {
                    placesArray.append(place)
                }
        
    }
            self.placesArray = placesArray
        
        }
    }
    
        
}
