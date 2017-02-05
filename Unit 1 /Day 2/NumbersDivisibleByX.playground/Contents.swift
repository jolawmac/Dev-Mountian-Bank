//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

// Challenge:
// Make a method that prints every X number between 0 and Y


// My work:

func printX(x: Int, y: Int) {
    for number in 0...y {
        if number % x == 0 {
            print(number)
        }
    }
}

printX(x: 3, y: 100)


// Make a method that prints every prime number between 0 and y

//func printPrime(y: Int) {
//    for number in 0...y {
//        if (number % 2 == 0) {
//            print(number)
//        }
//    }
//}

//printPrime(y: 100)

// Class work: 
// On the primes:

func primes(y: Int) {
    for number in 0...y {
        var divisibleCount = 0
        
        for i in 1...number {
            if number % 1 == 0 {
                divisibleCount += 1
            }
        }
        if divisibleCount <= 2 && number > 1 {
            print(number)
        }
    }
}
