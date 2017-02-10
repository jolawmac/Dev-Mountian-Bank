//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"


/* 
 get and set are funcs that properties have
 getting property is pulling value out of it 
 
 Example: 
 
 var favoriteMoview: String {
 get {
 return "Jumanji" 
 } set {
 return newValue 
 }
 
 
 
*/

// Black Diamoond below on how to use current date in computations

let calendar = Calendar.current
let date = Date()
let components = calendar.dateComponents([.year], from: date as Date)
var currentYear = components.year!

struct Person {
    
    let firstName: String
    let lastName: String
    var yearOfBirth: Int
    

    var age: Int {
        get {
            return currentYear - yearOfBirth
    }
        // if no parameter it defaults to newValue
        set(newAge) {
            yearOfBirth = currentYear - newAge
        }
    
}
}

var personOne = Person(firstName: "Josh", lastName: "McDonald", yearOfBirth: 1983)

print(personOne.yearOfBirth)
print(personOne.firstName, personOne.lastName)
print(personOne.age)

personOne.age = 50
print(personOne.yearOfBirth)
print(personOne.age)



