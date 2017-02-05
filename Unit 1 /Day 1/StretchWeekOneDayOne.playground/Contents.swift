//: Playground - noun: a place where people can play

import Cocoa


//Open a new Swift playground. Create a Person class with three properties:
//
//name property whose type is String.
//favoriteColor property whose type is an optional String.
//favoriteMovie property whose type is an optional String.
//
//class Person {
//    var name: String
//    var favoriteColor: String?
//    var favoriteMovie: String?
//    
//    init(name: String, favoriteColor: String?, favoriteMovie: String?) {
//        self.name = name
//        self.favoriteColor = favoriteColor
//        self.favoriteMovie = favoriteMovie
//    }
//}
//
//
//
//
//var PersonOne = Person(name: "Josh", favoriteColor: "Blue", favoriteMovie: "Star Wars")
//
//print("my name is \(PersonOne.name) and my favorit color is \(PersonOne.favoriteColor) and my favorie movie is \(PersonOne.favoriteMovie)!")
//
//
//var dan = Person(name: "dan", favoriteColor: nil, favoriteMovie: nil)
//dan



class Person {
    let name: String
    var favoriteColor: String? //nil
    var favoritMovie: String?
    
    init(name: String, favoriteColor: String?, favoritMovie: String?) {
        self.name = name
        self.favoriteColor = favoriteColor
        self.favoritMovie = favoritMovie
    }
}

var name: String = "dan"



/// out side
func printPersonDescription(person: Person) {
    
    if let favoriteMovie = person.favoritMovie, let favoriteColor = person.favoriteColor {
        print("\(person.name)'s favorite movie is \(favoriteMovie) and his/her favorite color is \(favoriteColor).")
    } else if let favoriteMovie = person.favoritMovie {
        print("\(person.name)'s favorite movie is \(favoriteMovie).")
    } else if let favoriteColor = person.favoriteColor {
        print("\(person.name)'s favorite color is \(favoriteColor).")
    } else {
        print("\(person.name) doesn't like anything.")
    }
}



let dan = Person(name: "dan", favoriteColor:  nil , favoritMovie: nil  )

printPersonDescription(person: dan)
