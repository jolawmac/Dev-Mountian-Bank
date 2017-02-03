//: Playground - noun: a place where people can play

import Cocoa

typealias Velocity = Double

extension Velocity {
    var kph: Velocity { return self * 1.60934 }
    var mph: Velocity { return self }
}

protocol VehicleType {
    var topSpeed: Velocity { get }
    var numberOfDoors: Int { get }
    var hasFlatbed: Bool { get }
}

struct Car {
    let make: String
    let model: String
    let year: Int
    let color: String
    let nickname: String
    let numberOfDoors: Int
    var gasLevel: Double {
        willSet {
            precondition(newValue <= 1.0 && newValue >= 0.0, "New value must be between 0 and 1.")
        }
    }
}

extension Car: VehicleType {
    var topSpeed: Velocity { return 180 }
    var hasFlatbed: Bool { return false }
}

extension Car {
    init(make: String, model: String, year: Int, numberOfDoors: Int) {
        precondition(numberOfDoors == 4 || numberOfDoors == 2, "You can only have a car with 2 or 4 doors in this example")
        self.init(make: make,
                  model: model,
                  year: year,
                  color: "Black",
                  nickname: "N/A",
                  gasLevel: 1.0)
    }
}
var c = Car(make: "Ford", model: "Fusion", year: 2013, numberOfDoors: 2)

extension Car {
    enum CarKind: CustomStringConvertible {
        case Coupe, Sedan
        var description: String {
            switch self {
            case .Coupe:
                return "Coupe"
            case .Sedan:
                return "Sedan"
                }
            }
    }
        var kind: CarKind {
            if numberOfDoors == 2 {
                return .Coupe
            } else {
                return .Sedan
            }
    }
}

extension Int {
    var timesFive: Int { return self * 5 }
}

c.kind.description

extension Car {
     mutating func emptyGas(amount: Double) {
        precondition(amount <= 1 && amount > 0, "Amount to remove must be between 0 and 1.")
        precondition(amount < gasLevel)
        gasLevel -= amount
    }
    mutating func fillGas() {
        gasLevel = 1.0
    }
}

c.emptyGas(amount: 0.3)
c.gasLevel
c.fillGas()
c.gasLevel
5.timesFive



