//: Playground - noun: a place where people can play

import Cocoa

var books = ["The Stand", "Game of Thrones", "Leviathan Wakes", "The Lost World"]
print(books)
print(books[0])
books[0] = "The Gunslinger"
print(books)
//books[1] = 10
books.append("Red Rising")
print(books)
books.remove(at: 4)
print(books)
books += ["Red Rising", "Golden Son"]
print(books)

var authors: [String] = []
//authors[0] = "Steven King"
authors.append("Stephen King")
authors[0] = "George R R Martin"
print(authors)

for bookIndex in 0 ..< books.count {
    print(books[bookIndex])
}

for book in books {
    print(book)
}

// challenge:

//: Create an array called numbers with the following numbers: 54 10 88 43

var numbers = [54, 10, 88, 43]

//: Create an empty array, called moreNumbers. Next, append those numbers to it.

var moreNumbers: [Int] = []
moreNumbers += numbers
print(moreNumbers)

//: Remove the numbers 53 and 43.

moreNumbers.remove (at: 3)
print(moreNumbers)

//: **Ub3r H4ck3r Challenge** Arrays have a reversed() method that returns an array holding the same elements as the original array, in reverse order. Write a function that does the same thing, without using reversed(). This is the signature of the function:  func reversed(_ myArray: [Int]) -> [Int]

var sampleArray = [34, 1, 77, 10, 86, 44]

func reversed(_ myArray: [Int]) -> [Int] {
    var reversedArray: [Int] = []
    let count = myArray.count - 1
    for index in 0 ... count {
        reversedArray.append(myArray[count - index])
    }
    return reversedArray
}

reversed(sampleArray)