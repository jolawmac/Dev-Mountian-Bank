//: Playground - noun: a place where people can play

import Cocoa

var groceryBag = Set<String>()
/*To create a set with known instances:
var groceryBag = Set(["Apples", "Oranges", "Pineapple"])
or: var groceryBag: Set = ["Apples", "Oranges", "Pineapple"]
 */

groceryBag.insert("Apples")
groceryBag.insert("Oranges")
groceryBag.insert("Pineaple")
//groceryBag.insert("Bananas")

for food in groceryBag {
    print(food)
}

let hasBananas = groceryBag.contains("Bananas")

let friendsGroceryBag = Set(["Bananas", "Cereal", "Milk", "Oranges"])
let commonGroceryBag = groceryBag.union(friendsGroceryBag)

//print(commonGroceryBag)

let roomatesGrocergyBag = Set(["Apples", "Bananas", "Cereal", "Toothpaste"])
let itemsToReturn = commonGroceryBag.intersection(roomatesGrocergyBag)

print(itemsToReturn)

let yourSecondBag = Set(["Berries", "Yogurt"])
let roomatesSecondBag = Set(["Grapes", "Honey"])
let disjoint = yourSecondBag.isDisjoint(with: roomatesSecondBag)

// BRONZE CHALLENGE: 

let myCities = Set(["Atlanta", "Chicago", "Jacksonville", "New York", "San Fran"])
let yourCities = Set(["Chicago", "San Fran", "Jacksonville"])
let ourCities = yourCities.isDisjoint(with: myCities)
let ourCitiesVisited = myCities.isDisjoint(with: yourCities)
let ourCommonCities = myCities.isSubset(of: yourCities)

let commonCities = myCities.intersection(yourCities)
print(commonCities)

// SILVER CHALLENGE:

var cars = Set<String>()

cars.insert("Ford")
cars.insert("Chevy")
cars.insert("Dodge")
cars.insert("VW")
print(cars)

var otherCars = Set(["Toyota", "Hyundai", "Kia"])
print(otherCars)

otherCars.popFirst()
print(otherCars)

var allCars = cars.union(otherCars)
print(allCars)

allCars.reversed()
allCars.insert("BMW")
print(allCars)




