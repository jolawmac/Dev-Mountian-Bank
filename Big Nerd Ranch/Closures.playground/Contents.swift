//: Playground - noun: a place where people can play

import Cocoa

var volunteerCounts = [1, 3, 40, 32, 2, 53, 77, 13]

//func sortAscending(i: Int, j: Int) -> Bool {
//    return i < j
//}
//let volunteersSorted = volunteerCounts.sorted()
//(sortAscending)

var volunteerCountsTwo = [1, 3, 40, 32, 2, 53, 77, 13]

//let volunteersSortedTwo = volunteerCountsTwo.sort({
//    (i: Int, j: Int) -> Bool in
//    return i < j
//})

//let volunteersSorted = volunteerCounts.sort(by: i > j)
//print(volunteersSorted)
//
//let volunteersSorted = volunteerCounts.sort{ $0 < $1 }

//func makeTownGrand() -> (Int, Int) -> Int {
//    func buildRoads(lightsToAdd: Int, toLights: Int) -> Int {
//        return toLights + lightsToAdd
//    }
//    return buildRoads
//}
//var stoplights = 4
//let townPlan = makeTownGrand()
//stoplights = townPlan(4, stoplights)
//print("Knowhere has \(stoplights) stoplights.")

func makeTownGrand(budget: Int, condition: (Int) -> Bool) -> ((Int, Int) -> Int)? {
    if condition(budget) {
        func buildRoads(lightsToAdd: Int, toLights: Int) -> Int {
            return toLights + lightsToAdd
        }
        return buildRoads
    } else {
        return nil
    }
}
func evaluateBudget(budget: Int) -> Bool {
    return budget > 10000
}

var stoplights = 4

if let townPlan = makeTownGrand(budget: 1000, condition: evaluateBudget) {
    stoplights = townPlan(4, stoplights)
}
print("Knowhere has \(stoplights) stoplights.")

func makeGrowthTracker(forGrowth growth: Int) -> () -> Int {
    var totalGrowth = 0
    func growthTracker() -> Int {
        totalGrowth += growth
        return totalGrowth
    }
    return growthTracker
}
var currentPopulation = 5422
let growby500 = makeGrowthTracker(forGrowth: 500)

growby500()
growby500()
growby500()
currentPopulation += growby500() // current population is now 7422 

let anotherGrowBy500 = growby500
anotherGrowBy500() // totalGrowth now equal to 2500

var someOtherPopulation = 4061981
let growBy1000 = makeGrowthTracker(forGrowth: 1000)
someOtherPopulation += growBy1000()
currentPopulation

let precinctPopulations = [1244, 2021, 2157]
let projectedPopulations = precinctPopulations.map {
    (population: Int) -> Int in
    return population * 2
}
projectedPopulations

let bigProjections = projectedPopulations.filter {
    (projection: Int) -> Bool in
    return projection > 4000
}
bigProjections

// GOLD CHALLENGE:

let totalProjection = projectedPopulations.reduce(0, { $0 + $1 })
//
//let totalProjection = projectedPopulations.reduce(0) {
//    (accumlatedProjection: Int, precinctProjection: Int) -> Int in
//    return accumlatedProjection + precinctProjection
//}
totalProjection