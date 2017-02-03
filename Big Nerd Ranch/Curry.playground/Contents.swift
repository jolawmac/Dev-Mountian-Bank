//: Playground - noun: a place where people can play

import Cocoa

func greetName(name: String, withGreeting greeting: String) -> String {
    return "\(greeting) \(name)"
}

let peronsalGreeting = greetName(name: "Josh", withGreeting: "Hello")
print(peronsalGreeting)

func greetingForName(name: String) -> (String) -> String {
    func greeting(greeting: String) -> String {
        return "\(greeting) \(name)"
    }
    return greeting
}

let greeterFunction = greetingForName(name: "Josh")
let theGreeting = greeterFunction("Hello")
print(theGreeting)

//func greeting(greeting: String)(name: String) -> String {
//    return "\(greeting) \(name)"
//}
//
//let friendlyGreeting = greeting("Hello")
//let newGreeting = friendlyGreeting(name: "Josh")
//print(newGreeting)

struct Person {
    var firstName = "Josh"
    var lastName = "McDonald"
    
    mutating func changeName(fn: String, ln: String) {
        firstName = fn
        lastName = ln
    }
}

var p = Person()
//let changer = Person.changeName
//changer(&p)("John", "Gallagher")
p.changeName(fn: "John", ln: "Gallagher")
p.firstName // John



