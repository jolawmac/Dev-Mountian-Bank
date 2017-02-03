//: Playground - noun: a place where people can play

import Cocoa


/* 
 dict: Dictionary<KeyType, ValueType>
 var dict1: Dictionary<String, Double> = [:]
 var dict2; Dictionary<String, Double>()
 var dict3: [String:Double] = [:]
 var dict4 = [String:Double]()
 
*/

var movieRatings = ["Donnie Darko": 4, "Chungking Express": 5, "Dark City" : 4]
print("I have rated \(movieRatings.count) movies")

let darkoRating = movieRatings["Donnie Darko"]

movieRatings["Dark City"] = 5
movieRatings["Chungking Express"] = 3
movieRatings
let oldRating: Int? = movieRatings.updateValue(2, forKey: "Donnie Darko")
if let lastRating = oldRating, let currentRating = movieRatings["Donnie Darko"] {
    print("Old rating: \(lastRating); current rating: \(currentRating)")
}
movieRatings["The Cabinet of Dr. Caligari"] = 5
print(movieRatings)
movieRatings.removeValue(forKey: "Dark City")
//movieRatings["Dark City"] = nil
print(movieRatings)

// Change from Swift 2 to Swift 3 removeValueForKey to remove(forKey:_) 

// for (key, value) in movieRatinge where (key, value) can be set to anything

for (i, x) in movieRatings {
    print("The movie \(i) was rated \(x).")
}
for movie in movieRatings.keys {
    print("User has rated \(movie)")
}

let album = ["Diet Roast Beef": 268, "Dubba Dubbs Stubs His Toe": 467, "Smokeys Carpet Cleaning Service": 187, "Track 4": 221]

//album["Diet Roast Beef"] = 400

for (song, length) in album {
    print("The song \(song) has a length of \(length)")
}
let heardSongs = Array(album.keys)
print(heardSongs)
let heardSongLengths = Array(album.values)
print(heardSongLengths)

// SILVER CHALLENGE:

var state = ["Bowie County": [75503, 75501, 75502, 75504, 75505], "Red River County": [75426, 75427, 75428, 75429, 75430], "Lamar County": [75400, 75401, 75402, 75403, 75404]]
//print(state)

for zipCodes in state.values {
    print("Texas has the following zip codes: \(zipCodes)")
}

//for value in state.values {
//    print("Texas has the following zip codes: \(value)")
//}

//print("Texas has the following: \(state.values)")
