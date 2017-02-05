//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

class Person {
    
    private let nameKey = "nameKey"
    private let ageKey = "ageKey"
    private let favMovieKey = "favMovieKey"
    
    let name: String
    let age: Int
    let favMovie: String
    
    
//    var dictionaryRep: [String: AnyObject] {
//        let personDictionary = [nameKey: self.name, ageKey: self.age, favMovieKey: self.favMovie] as [String: Any]
//        
//        return personDictionary as [String: AnyObject]
//    }
    
    init(name: String, age: Int, favMovie: String) {
        self.name = name
        self.age = age
        self.favMovie = favMovie
    }
    
    
    init?(dictionary: [String: AnyObject]) {
        guard let name = dictionary[nameKey] as? String,
            let age = dictionary[ageKey] as? Int,
            let favMovie = dictionary[favMovieKey] as? String else {
            
            return nil
        }
        
    self.name = name
    self.age = age
    self.favMovie = favMovie
        
    }

}


// dictionaries 

let workingDictionary: [String: Any] = ["nameKey": "Derek", "ageKey": 28, "favMovieKey": "Zoolander"]
let brokenDictionary: [String: Any] = ["nameKey": "Steve", "ageKey": 2]


// initializing

let personOne = Person(dictionary: workingDictionary as [String : AnyObject])

let personTwo = Person(dictionary: brokenDictionary as [String : AnyObject]) 




