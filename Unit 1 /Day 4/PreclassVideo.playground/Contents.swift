//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

class Car {
    
    private let makeKey = "make"
    private let modelKey = "model"
    private let yearKey = "year"
    
    let make: String
    let model: String
    let year: Int
    
    
    var fullDescription: String {
        return "\(year) \(make) \(model)"
    }
    
    var dictionaryRep: [String: AnyObject] {
        
        let carDictionary = [makeKey: self.make, modelKey: self.model, yearKey: self.year] as [String : Any]
        
        return carDictionary as [String : AnyObject]
    }
    
    //memberwise init
    init(make: String, model: String, year: Int) {
        self.make = make
        self.model = model
        self.year = year
    }
    
    
    // failable init 
    
    init?(dictionary: [String: AnyObject]) {
        guard let make = dictionary[makeKey] as? String,
        let model = dictionary[modelKey] as? String,
        let year = dictionary[yearKey] as? Int  else {
            
            //If we are missing somthing
            
            return nil
        }
        
        self.make = make
        self.model = model
        self.year = year
    }
    
}

// Class to dictionary

let myCar = Car(make: "Nissan", model: "Sentra", year: 1997)
let dreamCar = Car(make: "Tesla", model: "Model 5", year: 2025)

print(myCar.fullDescription)
myCar.dictionaryRep

// Dictionary to Class

let dreamCarDictionary = ["makeKey": "Tesla", "modelKey": "Model S", "yearKey": 2025] as [String : Any]
let myDreamCar = Car(dictionary: dreamCarDictionary as [String : AnyObject])


// Loop Car


let fancyCar = Car(make: "Ford", model: "Mustang", year: 2015)
let fancyCarDictionary = fancyCar.dictionaryRep
let secondFancyCar = Car(dictionary: fancyCarDictionary)
let secondFancyCarDictionary = secondFancyCar?.dictionaryRep




