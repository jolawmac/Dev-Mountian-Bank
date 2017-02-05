//: Playground - noun: a place where people can play

import Cocoa

protocol Vehicle {
    func accelerate()
    func stop()
}

protocol Music {
    func play()
    }

class Transport {
    
}

class Unicycle: Vehicle {
    var peddling = false
    
    func accelerate() {
        print("Squeaky squeaky")
        peddling = true
    }
    
    func stop() {
        peddling = false
    }
}


class Car: Transport, Vehicle, Music {
    var velocity = 0
    
    func play(){
        // Code goes here
    }
    
    func accelerate() {
        print("Vrrrrrooom")
        velocity += 4
    }
    
    func stop() {
        velocity = 0
    }
}

class Boat {
    var knot = 0
}

extension Boat: Vehicle {
    func accelerate() {
    print("Swish swich")
        knot += 10
}
    func stop() {
        knot = 0
    }
}

var vehicles: [Vehicle] = []
vehicles.append(Car())
vehicles.append(Unicycle())
vehicles.append(Boat())

for vehicle in vehicles {
    vehicle.accelerate()
}



// Challenge: 


//: Create a protocol called TipCalculator. This calculator should take one method: func tipForAmount(_ amount:Float, atPercentage percentage: Float) -> Float
//: Implement the protocol on a ScientificCalculator class with an extension.

protocol TipCalculator {
    func tipForAmount(_ amount: Float, atPercentage percentage: Float) -> Float
}

class ScientificCalculator {
    
}

extension ScientificCalculator: TipCalculator {
    func tipForAmount(_ amount: Float, atPercentage percentage: Float) -> Float {
        return amount * percentage
    }
}


//: Here is a story class. Often times, it's helpful to print out the contents to the console. yet when you print out an instance of a Story object, you get: Story.

class Story {
    var name: String
    var writer: String
    
    init(name: String, writer: String) {
        self.name = name
        self.writer = writer
    }
}

//: Implement the CustomStringConvertiable protocol on the Story object via. an extension to print out the contents of the object. Implement the description method that will return a string. The string should read: "name: <name>, writer: <writer>"

extension Story: CustomStringConvertible {
    var description: String {
        return "name: \(name), writer: \(writer)"
    }
}

var story = Story(name: "Lord of the Rings", writer: "JRR Tolkien")
print(story)