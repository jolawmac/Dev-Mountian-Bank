//: Playground - noun: a place where people can play

import Cocoa

enum Coin: Int {
    case penny = 1
    case nickel = 5
    case dime = 10
    case quarter = 25
}

var coin = Coin.quarter

switch coin {
case .penny:
    print("you have a penny")
case .nickel:
    print("you have a nickel")
case .dime:
    print("you have a dime")
case .quarter:
    print("you have a quater")
}

//var coins = [Coin.quarter, Coin.quarter, Coin.dime, Coin.penny]

var coins: [Coin] = [.quarter, .quarter, .nickel, .dime, .penny]

var value = 0
for coin in coins {
    switch coin {
    case .penny:
        print("you have a penny")
    case .nickel:
        print("you have a nickel")
    case .dime:
        print("you have a dime")
    case .quarter:
        print("you have a quater")
    }
    value += coin.rawValue
}
print(value)


enum Icon: String {
    case music
    case sports
    case weather
    
    var fileName: String {
        return "\(rawValue.capitalized).png"
    }
}

let icon = Icon.weather
icon.fileName

enum HTTPMethod {
    case get(address: String)
    case post(body: String)
}

func makeRequest(method: HTTPMethod) {
    switch method {
    case .get(let address):
        print("Address: \(address)")
    case .post(let body):
        print("Body: \(body)")
    }
}

makeRequest(method: .get(address: "www.ray.com"))
makeRequest(method: .post(body: "Hello World"))


// CHALLENGE: 

//: Create a stars rating system that have the following cases: 1 star, 2 stars, 3 stars, 4 stars, 5 stars. Give each case the following values: terrible, meh, good, great, classic

enum Stars: String {
    case oneStar = "Terrible"
    case twoStar = "Meh"
    case threeStar = "Good"
    case fourStar = "Great"
    case fiveStar = "Classic"
}

//: Next, add the following, "The Wizard of Oz is rated 5 stars. This makes it (five stars value)

print("The Wizard of Oz is rated 5 stars. This makes it \(Stars.fourStar.rawValue)!")

//: Create an enumeration called Months that will hold all the cases for months in the year. Make this enumeration an Int type. Start counting from 1.

enum Months: Int {
    case January = 1
    case February
    case March
    case April
    case May
    case June
    case July
    case August
    case September
    case October
    case November
    case December
}

//: //: **Ub3r H4ck3r Challenge** Create a new enumeration function that determines the amount of time for the winter break. The winter break occurs in December. The function should take a month and return an Int. The signature should be something like: func monthsUntilWinterBreak(from month: Month) -> Int
//: You may want to create a new enumeration for this function

enum MonthsAgain: Int {
    case January = 1
    case February
    case March
    case April
    case May
    case June
    case July
    case August
    case September
    case October
    case November
    case December

func winterBreak(from month: MonthsAgain) ->Int {
    return MonthsAgain.December.rawValue - month.rawValue
}
}