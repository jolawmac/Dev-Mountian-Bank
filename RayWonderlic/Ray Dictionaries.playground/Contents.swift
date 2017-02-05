//: Playground - noun: a place where people can play

import Cocoa

var userInfo = ["firstName" : "Josh", "lastName" : "McDonald", "Position" : "Editor"]
print(userInfo["firstName"])
print(userInfo["lastName"])

if let firstName = userInfo["firstName"], let lastName = userInfo["lastName"] {
    print("\(firstName) \(lastName)")
}

var anotherUser: [String:String] = [:]
anotherUser["firstName"] = "Chris"
anotherUser["lastName"] = "Freeman"
print(anotherUser)

if anotherUser["firstName"] != nil && anotherUser["latsName"] != nil {
print("\(anotherUser["firstName"]) \(anotherUser["lastName"])")
}


// Deleting Key: 

anotherUser["lastName"] = nil
print(anotherUser)


// Loop through dictionary: 

for key in anotherUser.keys {
    if let info = anotherUser[key] {
        print(info)
    }
}

// CHALLENGE: 

//: Create a new dictionary and add the following values: Stephen King - Under the Dome, Elizabeth Peters - Crocodile on the Sandbank, Clive Cussler - The Wrecker

var books = ["Stephen King" : "Under the Dome", "Elizabeth Peters" : "Crocodile on the Sandbank", "Clive Cussler" : "The Wrecker"]

//: Add a new key: Robert Heinlein - The Moon is a Harsh Mistress

books["Robert Heinlein"] = "The Moon is a Harsh Mistress"
print(books)

//: Print out the Stephen King value

print(books["Stephen King"])

if let author = books["Stephen King"] {
    print("\(author)")
}

//: Now delete the Stephen King key/value pair

books["Stephen King"] = nil
print(books)

//: Loop through the dictionary and print out all the key/values

for authorsAndBooks in books {
    print(books)
}

for (key, value) in books {
    print("\(key) wrote \(value)")
}

//: **Ub3r H4ck3r Challenge** Declare a function occurrencesOfCharacters that calculates which characters occur in a string, as well as how often each of these characters occur. Return the result as a dictionary: func occurrencesOfCharacters(text: String) -> [Character: Int]

func occurencesOfCharacters(text: String) -> [Character: Int] {
    var occurences: [Character : Int] = [:]
    for letter in text.characters {
        if occurences[letter] != nil {
            occurences[letter] = occurences[letter]! + 1
        } else {
            occurences[letter] = 1
        }
    }
    return occurences
}
print(occurencesOfCharacters(text: "These are the days of our lines"))
