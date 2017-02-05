//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

func dance() {
    print("Everybody footloose!")
}
dance()

for index in 0 ... 9 {
    dance()
}

func isEven(number: Int) -> Bool {
    var isEven = false
    if number % 2 == 0 {
        isEven = true
    }
    return isEven
}

isEven(number: 100)

func isEvenTwo(_ number: Int) -> Bool {
    return number % 2 == 0
}

//isEvenTwo(number: 7)
//isEvenTwo(number: 10)
isEvenTwo(8)

for index in 0 ... 9 {
    print("\(index) is even: \(isEvenTwo(index))")
}

func writeMessage(_ text:String, numberOfTimes times: Int) {
    for _ in 0 ... times {
        print(text)
    }
}
writeMessage("Hi mom", numberOfTimes: 10)


// CHALLENGE: 

//: Write a function named printFullName that takes two strings called firstName and lastName. The function should print out the full name defined as firstName + " " + lastName. Use it to print out your own full name.

func printFullName(firstName: String, lastName: String) {
    print("\(firstName) \(lastName)")
}
printFullName(firstName: "Josh", lastName: "McDonald")

//: Change calculateFullName to return a tuple containing both the full name and the length of the name. You can find a string’s length by using the following syntax: string.characters.count. Use this function to determine the length of your own full name.

func calculateFullName(firstName: String, lastName: String) -> (String, Int) {
    var fullName = "\(firstName) \(lastName)"
    return (fullName, fullName.characters.count)
}
var name = calculateFullName(firstName: "Josh", lastName: "McDonald")
print("name: \(name.0)")
print("length: \(name.1)")

//: **Ub3r H4ck3r Challenge** - This challenge is from Project Euler. Get the sums of numbers of any two mulitples beneath any max value. For the purposes of this excerise, set the max value to be 1000.

//: For example, if you provide the numbers 3 and 5, then the function will add the sums between numbers such as 5, 9, 15, etc. The resulting sum will be 233,168.

func sumOfMultiples(mult1:Int, mult2:Int) -> Int {
    var sum = 0
    for index in 0 ..< 1000 {
        if index % mult1 == 0 || index % mult2 == 0 {
            sum += index
        }
    }
    return sum
}
sumOfMultiples(mult1: 3, mult2: 5)

