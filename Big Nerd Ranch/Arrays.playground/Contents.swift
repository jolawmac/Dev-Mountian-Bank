//: Playground - noun: a place where people can play

import Cocoa

//var bucketList: Array<String>

//var bucketList: [String] = ["Fiji"]
var bucketList = ["Fiji"]
bucketList = ["Live in Israel"]

bucketList.append("Climb Machu Pichu")
bucketList.append("Visit Fiji")
bucketList.append("Jeep Wrangler")
bucketList.append("Work in the tech industry")
bucketList.append("See New Zealand")

bucketList.remove(at: 4)

//bucketList
print(bucketList.count)
print(bucketList[0...2])
print(bucketList[3])

bucketList[2] += " within 10 years"
bucketList[0] = "Climb Mt. Kilimanjaro"
bucketList

// Adding items to an array: for-in loop and/or += operator

var newItems = ["Fly hot air balloon to Fiji", "Watch LotR' Trilogy", "Go on a walkabout", "Scuba dive in the Great Blue Hole", "Find a triple rainbow"]
for item in newItems {
    bucketList.append(item)
}

var moreNewItems = ["Run a 5k", "Learn to cook"]
bucketList += moreNewItems

bucketList.insert("Toboggan across Alaska", at: 2)

bucketList.remove(at: 4)

bucketList
print(bucketList)

// Checking to arrays to see if they are the same:

var myronsList = ["Climb Mt. Kilimanjaro", "Climb Machu Pichu", "Toboggan across Alaska", "Visit Fiji", "See New Zealand", "Fly hot air balloon to Fiji", "Watch LotR's Trilogy", "Go on a walkabout", "Scuba dive in the Great Blue Hole", "Find a triple rainbow", "Run a 5k", "Learn to cook"]
let equal = (bucketList == myronsList)

let lunches = ["Cheeseburger", "Veggie Pizza", "Chicken Caesar Salad", "Black Bean Burrito", "Falafel Wrap"]

// BRONZE CHALLENGE: 

var toDoList = ["Take out garbage", "Pay bills", "Cross off finished items"]
toDoList.count

// SILVER CHALLENGE:

for reverseOrder in toDoList.reversed() {
    print(reverseOrder)
}

// REFACTORED

let reversedOrderTwo = Array(toDoList.reversed())
print(reversedOrderTwo)


