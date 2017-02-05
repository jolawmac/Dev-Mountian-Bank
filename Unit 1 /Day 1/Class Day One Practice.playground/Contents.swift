//: Playground - noun: a place where people can play

import Cocoa

// Classes need an initializer and structs don't. 

class Person {
    let firstName: String
    let lastName: String
    let middleName: String?
    
// taking the blueprint and making the person
    
    init(firstName: String, lastName: String, middleName: String?) {
        self.firstName = firstName
        self.lastName = lastName
        self.middleName = middleName
    }
    
}

class House {
    
    // blue prints 
    let walls: String
    let doors: String
    let windows: String?
    
    // this is the thing that puts it all together, actually makes the house
    init(wallsInit: String, doorsInit: String, windowsInit: String? ) {
        self.walls = wallsInit
        self.doors = doorsInit
        self.windows = windowsInit
    }
}