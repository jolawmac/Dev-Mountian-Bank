//: Playground - noun: a place where people can play

import Cocoa

var north = 0
var south = 1
var east = 2
var west = 3
var direction = 0

switch direction {
case north:
    print("You walked north")
    fallthrough
case south:
    print("You walked south")
    fallthrough
case east:
    print("You walked east")
//    fallthrough
case west:
    print("You walked west")
//    fallthrough
default:
    print("Please give a valid direction")
}

switch direction {
case north ... east:
print("You walked north, south, or east")
case west:
print("You walked west!")
default:
print("Please give a valid direction.")
}

var name = "Ray"
switch name {
    case "Ray", "Vicki":
    print("Hi Ray and Vicki")
default:
    print("Print")
}

var movingObject = (east, 100)
switch movingObject {
case (north, _):
    print("Moving north")
case (_, 100):
    print("moving fast")
default:
    print("not matched")
}

switch movingObject {
case let (direction, speed) where speed >= 100:
    print("moving at \(speed) meters per second: \(direction)")
default:
    print("not matched")
}

// CHALLENGE


// Write a switch statement that takes an age as an integer and prints out the life stage related to that age. You can make up the life stages, or use my categorization as follows: 0-2 years, Infant; 3-12 years, Child; 13-19 years, Teenager; 20-39, Adult; 40-65, Middle aged; 66+, Senior Citizen.

var age = 33
switch age {
case 0...2:
    print("Infant")
case 3...12:
    print("Child")
case 13...19:
    print("Teenager")
case 20...39:
    print("Adult")
case 40...65:
    print("Middle Aged")
default:
    print("Senior Citizen")
}

//: **Ub3r H4ck3r Challenge** - Below are a list of individual coordniate variables. These contain tuples. Write a switch statement that switch on these tuples (uncomment them one at a time to run your test).

//: Here's how it will work, if there is a 0 in the first value, write: "On the y/z plane". If there is a 0 in the second value, write: "On the x/z plane". Finally, if there is a 0 in the third value, write: "On the x/y plane". If a value doesn't match any of those cases, print out "Nothing special".



let coordinates = (1, 5, 0)
//let coordinates = (2, 2, 2)
//let coordinates = (3, 0, 1)
//let coordinates = (3, 2, 5)
//let coordinates = (0, 2, 4)

switch coordinates {
case (_, _, 0):
    print("On the x/y plane")
case (_, 0, _):
    print("On the x/z plane")
case (0, _, _):
    print("On the y/z plane")
default:
    print("Nothing special")
}



