//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"


class Car: Equatable {
    var year: String
    var make: String
    var model: String
    
    init(year: String, make: String, model: String) {
        self.year = year
        self.make = make
        self.model = model
    }
    
    func go() {
        print("Vroom, Vroom")
    }
    
    static func ==(lhs: Car, rhs: Car) -> Bool {
       return lhs.year == rhs.year && lhs.make == rhs.make && lhs.model == rhs.model
    }
}

let car1 = Car(year: "2015", make: "Ford", model: "Mustang")
let car2 = Car(year: "2016", make: "Toyota", model: "Tacoma")
let car3 = Car(year: "2015", make: "Ford", model: "Mustang")

if car1 == car3 {
    print("That's the same car")
} else {
    print("Those are diff cars")
}
if car1 == car2 {
    print("That's the same car")
} else {
    print("Those are diff cars")
}

if "this" == "that" {
    print("equal")
} else {
    print("not equal")
}


