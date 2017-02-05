//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

// Class Work: Me
//class Person: Equatable {
//    let firstName: String
//    let lastName: String
//    let age: Int
//    
//    init(firstName: String, lastName: String, age: Int) {
//        self.firstName = firstName
//        self.lastName = lastName
//        self.age = age
//    }
//    
//    static func ==(lhs: Person, rhs: Person) -> Bool {
//        return lhs.firstName == rhs.firstName && lhs.lastName == rhs.lastName && lhs.age == rhs.age
//    }
//    
//    func areYouAMemberOfTheClub(yahornah: Person) -> Bool {
//        
//    }
//    
//}
//
//let james = Person(firstName: "James", lastName: "Pacheco", age: 26)
//let andrea = Person(firstName: "Andrea", lastName: "Mower", age: 24)
//let carol = Person(firstName: "Rebecca", lastName: "Mordo", age: 30)
//let josh = Person(firstName: "Josh", lastName: "BigMuscles", age: 34)
//let steve = Person(firstName: "Steven", lastName: "Jones", age: 44)
//
//let clubMembers: [Person] = [james, andrea, carol, josh]
//

// Class Work: Class


class Person: Equatable {
    let firstName: String
    let lastName: String
    let age: Int
    
    init(firstName: String, lastName: String, age: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
    }
    
}

func ==(lhs: Person, rhs: Person) -> Bool {
    return lhs.firstName == rhs.firstName && lhs.lastName == rhs.lastName && lhs.age == rhs.age
}

let james = Person(firstName: "James", lastName: "Pacheco", age: 26)
let andrea = Person(firstName: "Andrea", lastName: "Mower", age: 24)
let carol = Person(firstName: "Rebecca", lastName: "Mordo", age: 30)
let josh = Person(firstName: "Josh", lastName: "BigMuscles", age: 34)
let steve = Person(firstName: "Steven", lastName: "Jones", age: 44)

let clubMembers: [Person] = [james, andrea, carol, josh]

func areYouAMemberOfTheClub(person: Person) -> Bool {
//    if clubMembers.contains(person) {
//        return true
//    } else {
//        return false
//    }
    var isMember = false
    
    for member in clubMembers {
        
        if member == person {
            isMember = true
        }
    }
    return isMember
}

//func member(person: Person) {
//    return clubMembers.contains(person)
//}