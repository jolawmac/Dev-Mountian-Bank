//: Playground - noun: a place where people can play

import Cocoa

// FUNCTIONS:

func printGreeting() {
    print("Hello, playground.")
}
printGreeting()

func printPersonalGreeting(name: String) {
    print("Hello \(name), welcome you to your playground.")
}
printPersonalGreeting(name: "Josh")

// VARIADIC PARAMATERS

func printPersonalGreetingsTwo(names: String...) {
    for name in names {
        print("Hello \(name), welcome to the playground.")
    }
}
printPersonalGreetingsTwo(names: "Alex", "Chris", "Drew", "Pat")

func carsILike(car: String...) {
    for vehicles in car {
        print("I love to drive \(vehicles)!")
    }
}
carsILike(car: "Mustang", "Camaro", "Corvette", "Viper")

// EXPLICIT PARAMATER NAMES:

//func divisionDescription(num: Double, den:Double) {
//    print("\(num) divided by \(den) equals \(num / den)")
//}
//divisionDescription(num: 9.0, den: 3.0)

func divisionDescription(forNumberator num: Double, andDenominator den: Double) {
    print("\(num) divided by \(den) equals \(num / den)")
}
divisionDescription(forNumberator: 9.0, andDenominator: 3.0)

func divisionDescriptionTwo(forNumeratorTwo num: Double, andDenominatorTwo den: Double, withPunctuation puncuation: String = ".") {
    print("\(num) divided by \(den) equals \(num / den)\(puncuation)")
}
divisionDescriptionTwo(forNumeratorTwo: 9.0, andDenominatorTwo: 3.0)
divisionDescriptionTwo(forNumeratorTwo: 9.0, andDenominatorTwo: 3.0, withPunctuation: "!")

func twoCars(carNumberOne ford: String, carNumberTwo chevy: String) {
    print("I'd rather drive a \(ford) than a \(chevy)")
}
twoCars(carNumberOne: "Mustang", carNumberTwo: "Camaro")

// INOUT PARAMETERS: 

var error = "The request failed:"
func appendErrorCode(code: Int, toErrorSting errorString: inout String) {
    if code == 400 {
        errorString += " bad request."
    }
}
appendErrorCode(code: 400, toErrorSting: &error)
error

// RETURNING FROM A FUNCTION:

func divisionDescriptionThree(forNumeratorThree num: Double, andDenominatorThree den: Double, withPUncutationTwo punctuation: String = ".") -> String {
    return "\(num) divided by \(den) equals \(num / den)\(punctuation)"
}
print(divisionDescriptionThree(forNumeratorThree: 9.0, andDenominatorThree: 3.0, withPUncutationTwo: "!"))

// NESTED FUNCTIONS: 

func areaOfTriangle(withBase base: Double, andHeight height: Double) -> Double {
    let numerator = base * height
    func divide() -> Double {
        return numerator / 2
    }
    return divide()
}
areaOfTriangle(withBase: 3.0, andHeight: 5.0)

// MULTIPLE RETURNS

func sortEvenOdd(numbers: [Int]) -> (evens: [Int], odds: [Int]) {
    var evens = [Int]()
    var odds = [Int]()
    for number in numbers {
        if number % 2 == 0 {
            evens.append(number)
        } else {
            odds.append(number)
        }
    }
    return (evens, odds)
}

let aBunchOfNumbers = [10, 1, 4, 3, 57, 43, 84, 27, 156, 111]
let theSortedNumbers = sortEvenOdd(numbers: aBunchOfNumbers)
print("The even numbers are: \(theSortedNumbers.evens); the odd numbers are: \(theSortedNumbers.odds)")

// OPTIONAL RETURN TYPES:

func grabMiddleName(name: (String, String?, String)) -> String? {
    return name.1
}
let middleName = grabMiddleName(name: ("Matt", nil, "Mathias"))
if let theName = middleName {
    print(theName)
}

// GUARD:
//
//func greetByMiddleName(name: (first: String, middle: String?, last: String)) {
//    guard let middleName = name.middle else {
//        print("Hey there!")
//        return
//    }
//    print("Hey \(middleName)")
//}
//greetByMiddleName(name: ("Matt", nil, "Mathias"))


// BRONZE CHALLENGE:

func greetByMiddleName(name: (first: String, middle: String?, last: String)) {
    guard let middleName = name.middle, middleName.characters.count < 4 else {
        print("Hey there!")
        return
    }
    print("Hey \(middleName)")
}
greetByMiddleName(name: ("Matt", "Scott", "Mathias"))



// SILVER CHALLENGE: 


func beanSifter (groceryList groceries: [String]) -> (beans: [String], otherGroceries: [String]) {
    var beans = [String]()
    var otherGroceries = [String]()
    for item in groceries {
        if item.hasSuffix("beans") {
            beans.append(item)
        } else {
            otherGroceries.append(item)
        }
    }
    return(beans, otherGroceries)
}
let result = beanSifter(groceryList: ["green beans", "milk", "black beans", "pinto beans", "apples"])
result.beans
result.otherGroceries
