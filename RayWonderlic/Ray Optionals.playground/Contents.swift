//: Playground - noun: a place where people can play

import Cocoa


var firstName: String? = "Josh"
var lastName: String? = "McDonald"

print(firstName)

if let firstName = firstName {
    print(firstName)
    if let lastname = lastName {
        print(lastName)
    }
}

//lastname = nil
if let firstName = firstName, let lastName = lastName {
    print("\(firstName) \(lastName)")
}

if var firstname = firstName, var lastName = lastName {
    firstName = "Sam"
    lastName = "Davies"
    print("\(firstName) \(lastName)")
}

func print(firstName: String?, andLastName lastName: String?) {
   print(firstName!)
    guard let firstName = firstName, let lastName = lastName else {
        print("exiting...")
        return
    }
    print("\(firstName) \(lastName)")
}

print(firstName: "Ray", andLastName: "Wenderlich")
//print(firstName: nil, andLastName: "Wenderlic")



// CHALLENGE! 


//: Make an optional String called myFavoriteSong. If you have a favorite song, set it to a string representing that song. If you have more than one favorite song or no favorite, set the optional to nil.

var myFavoriteSong: String? = "Chainsaw"
var mySecondFavSong: String? = nil

//: Create two variables. Call one name and the other is called greeting. The greeting should be "Hello,". Unwrap the name variable, and if there's a name value, then print out the greeting

var name: String? = "Josh"
var greeting = "Hello,"

if let name = name {
    print(greeting + " " + name)
}


//: Now, write the greeting using force unwrap.

print(greeting + " " + name!)

//: **Ub3r H4ck3r Challenge** - Create a function that prints out the greeting. This function will take two strings - both optionals. Use guard syntax to bind the variable and print out the greeting.

func printName(_ name: String?, andGreeting greeting: String?) {
    guard let name = name, let greeting = greeting else {
        return
    }
    print(greeting + " " + name)
}


