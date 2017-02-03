//: Playground - noun: a place where people can play

import Cocoa

enum TextAlignment: Int {
    case Left = 20
    case Right = 30
    case Center = 40
    case Justify = 50
}

//var alignment = TextAlignment.Left
var alignment = TextAlignment.Justify
//alignment = .Right

if alignment == .Right {
    print("We should right-aling the text!")
}
switch alignment {
case .Left:
    print("left aligned")
case .Right:
    print("right aligned")
case .Center:
    print("center aligned")
//default:
//    print("center alinged")
case .Justify:
    print("justify")
}

print(" Left has raw value \( TextAlignment.Left.rawValue)")
print(" Right has raw value \( TextAlignment.Right.rawValue)")
print(" Center has raw value \( TextAlignment.Center.rawValue)")
print(" Justify has raw value \( TextAlignment.Justify.rawValue)")
print(" The alignment variable has raw value \( alignment.rawValue)")

// Create a raw value.
let myRawValue = 20
//Try to convert the raw value into a Text Alignment
if let myAlignment = TextAlignment(rawValue: myRawValue) {
    // Converstion Succeeded!
    print("successfully converted \(myRawValue) into a TextAlignment")
} else {
    // Converstion Failed.
    print("\(myRawValue) has no corresponding TextAlignment case")
}

enum ProgrammingLanguage: String {
    case Swift
    case ObjectiveC = "Objective - C"
    case C
    case Cpp = "C++"
    case Java
}

let myFavoriteLangauge = ProgrammingLanguage.Swift
print("My fav programming langauge is \(myFavoriteLangauge.rawValue)")


enum Lightbulb {
    case On
    case Off


func surfaceTemperatureForAmbientTemperature(ambient: Double) -> Double {
    switch self {
    case .On:
        return ambient + 150.0
    case .Off:
        return ambient
    }
}
    
    mutating func toggle() {
        switch self {
        case .On:
            self = .Off
        case .Off:
            self = .On
        }
    }
}

var bulb = Lightbulb.On
let ambientTemperature = 77.0

var bulbTemperature = bulb.surfaceTemperatureForAmbientTemperature(ambient: ambientTemperature)
print("the bulb's temperature is \(bulbTemperature)")

bulb.toggle()
bulbTemperature = bulb.surfaceTemperatureForAmbientTemperature(ambient: ambientTemperature)
print("The bulb's temperature is \(bulbTemperature)"
)



enum ShapeDimensions {
    // Point has no associated value - it is dimentionless
    case Point
    // Square's associated value is the length of one side 
    case Square(side: Double)
    // Rectangle's assoiated value defines its width and height 
    case Rectangle(width: Double, height: Double)
    case rightTriangle(sideA: Double, sideB: Double)
    
    func area() -> Double {
        switch self {
        case .Point:
            return 0
        case let .Square(side:side):
            return side * side
        case let .Rectangle(width: w, height: h):
            return w * h
        case let .rightTriangle(sideA:a, sideB:b):
            return (a * b) / 2
        }
    }
    
    
    // BRONZE CHALLENGE:
    
    // SILVER CHALLENGE:
    
    func perimeter() -> Double {
        switch self {
        case .Point:
            return 0
        case let .Square(side:side):
            return 4 * side
        case let .Rectangle(width:w, height:h):
            return 2 * w + 2 * h
        case let .rightTriangle(sideA:a, sideB:b):
            return a + b + sqrt(a * a + b * b)
        }
    }
}
//var squareShape = ShapeDimensions.Square(10.0)
//var rectShape = ShapeDimensions.Rectangle(width: 5.0, height: 10.0)
//var pointShape = ShapeDimensions.Point
//print("square's area = \(squareShape.area())")
//print("rectangle's area = \(rectShape.area())")
//print("point's area = \(pointShape.area())")


//
//indirect enum FamilyTree {
//    case NoKnownParents
//    case OneKnownParent(name: String, ancestors: FamilyTree)
//    case TwoKnownParents(fatherName: String, fatherAncestors: FamilyTree, motherName: String, motherAncestors: FamilyTree)
//}

enum FamilyTree {
    case NoKnownParents
   indirect case OneKnownParent(name: String, ancestors: FamilyTree)
    indirect case TwoKnownParents(fatherName: String, fatherAncestors: FamilyTree, motherName: String, motherAncestors: FamilyTree)
}
let fredAncestors = FamilyTree.TwoKnownParents(fatherName: "Fred Sr.", fatherAncestors: .OneKnownParent(name: "Beth", ancestors: .NoKnownParents), motherName: "Marsha", motherAncestors: .NoKnownParents)


