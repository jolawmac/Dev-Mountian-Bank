//: Playground - noun: a place where people can play

import Cocoa

var myFirstInt: Int = 0

//for i in 1...5 {
//    myFirstInt += 1
//    print(myFirstInt)
//}

var starWarsMovies: Int = 0

for i in 1...7 {
        starWarsMovies += 1
    print("I've seen Star Wars movie number \(starWarsMovies) at iteration number \(i).")
}

for _ in 1...5 {
    myFirstInt += 1
    print(myFirstInt)
}

for case let i in 1...100 where 1 % 3 == 0 {
    print(i)
}


for i in 1 ..< 6 {
    myFirstInt += 1
    print(myFirstInt)
}

var i = 1
while i < 6 {
    myFirstInt += 1
    print(myFirstInt)
    i += 1
}


/*var shields = 5
var blastersOverheating = false
var blasterFireCount = 0
var spaceDemonsDestroyed = 0
while shields > 0 {
 if spaceDemonsDestroyed == 500 {
 print("You beat the game!")
 break 
 }
    if blastersOverheating {
        print("Blasters are overheated! Cooldown was initiated.")
        sleep(5)
        print("Blasters ready to fire")
        sleep(1)
        blastersOverheating = false
        blasterFireCount = 0
    }
    if blasterFireCount > 100 {
        blastersOverheating = true
        continue
    }
    // Fire blasters!
    print("Fire Blasters!")
    blasterFireCount += 1
 spaceDemonsDestroyed += 1
}
 */


// BRONZE CHALLENGE: 

for i in 1...5 {
    for loopCounter in 0...100 {
        if loopCounter % 2 == 0 {
        print(loopCounter)
    }
    }
}

//var looperCounter = 0
//repeat {
//    if looperCounter % 2 == 0 {
//        print(looperCounter)
//    }
//    looperCounter += 1
//} while looperCounter <= 100
