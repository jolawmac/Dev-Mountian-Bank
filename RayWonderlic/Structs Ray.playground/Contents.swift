//: Playground - noun: a place where people can play

import Cocoa

struct Book {
    var title: String
    var isPublished: Bool
}

// Properties are immutable by default, use 'mutating' in func to change it
struct Author {
    var firstName: String
    var lastName: String
    var booksWritten: [Book] = []
    var booksBeingWritten: [Book] = []
    var books: [Book] {
        get {
            return booksWritten
        }
    }
    var totalBooks: Int {
        return booksBeingWritten.count + booksWritten.count
    }
    
    
    mutating func addBook(_ aBook: Book) {
        if aBook.isPublished {
            booksWritten.append(aBook)
        } else {
            booksBeingWritten.append(aBook)
        }

    }

}


var book = Book(title: "The Stand", isPublished: true)
book.title
var theStand = Book(title: "The Stand", isPublished: true)

var writer = Author(firstName: "Stphen", lastName: "King", booksWritten: [theStand], booksBeingWritten: [])
var anotherBook = Book(title: "The Gunslinger", isPublished: true)
writer.addBook(anotherBook)

var unPublishedBook = Book(title: "Untitle Project", isPublished: false)
writer.addBook(unPublishedBook)
writer.booksBeingWritten

print(writer.totalBooks)

// CHALLENGE: 

//: Create a T-shirt struct that has size, color and material options. The size prices go from 3, 5, 7. The colors range from red, blue, and white. It should range from 2, 3, and 1. Finally, for material options, choose regular or organic. It should be 5 or 10. Print out the result in calculatePrice()

struct Tshirt {
    var size: String
    var color: String
    var materialOptions: String
    
    func calculatePrice() -> Int {
        var value = 0
        
        switch size {
            case "S":
            value += 3
            case "M":
            value += 5
            case "L":
            value += 7
        default:
            ()
        }
        
        switch color {
            case "Red":
            value += 2
            case "Blue":
            value += 3
            case "White":
            value += 1
        default:
            ()
        }
        
        switch materialOptions {
            case "Regular":
            value += 5
            case "Organic":
            value += 10
        default:
            ()
        }
        return value
    }
}

var tshirt = Tshirt(size: "L", color: "Red", materialOptions: "Regular")

//: Here's an example of creating a struct:
//: var tshirt = TShirt(size: "M", color: "red", material: "organic")




//: **Ub3r H4ck3r Challenge** Refactor the code so that materials, color, and sizes are structs with a name and a price. Pass these structs into the TShirt and have it calculate the price

struct TShirtProperty {
    var name = ""
    var price = 0
}

var mediumSize = TShirtProperty(name: "Medium", price: 5)
var material = TShirtProperty(name: "Organic", price: 10)
var color = TShirtProperty(name: "Blue", price: 3)

struct NewTShirt {
    var size: TShirtProperty
    var color: TShirtProperty
    var material: TShirtProperty
    
    func calculatePrice() -> Int {
        var value = 0
        
        value += mediumSize.price
        value += color.price
        value += material.price
        
        return value
    }
    
}


// PROPERTIES CHALLENGE: 


//: Create a property called fullName that returns the firstName and lastName combined.

struct Name {
    var firstName = ""
    var lastName = ""
    var fullName: String {
    return "\(firstName) \(lastName)"
    }
}
var newName = Name(firstName: "Josh", lastName: "McDonald")

//: **Ub3r H4ck3r Challenge**
//: Here is an Fuel Tank object and through the magic of properties, you can add some behavior to it. Here's what you need to do:
//: 1. Add a lowFuel stored property of Boolean type to the structure.
//: 2. Flip the lowFuel Boolean when the level drops below 10%.
//: 3. Ensure that when the tank fills back up, the lowFuel warning will turn off.
//: 4. Set the level to a minimum of 0 or a maximum of 1 if it gets set above or below the expected values.
//: To do this, you need to use a property observer called didSet. This runs just after a value is set. You use it the same way you use getters and setters. You also have a willSet as well.

struct fuelTank {
    var lowFuel: Bool
    var level: Double {
        didSet {
            if level > 1.0 {
                level = 1.0
            } else if level < 0 {
                level = 0
            }
            if level < 0.01 {
                lowFuel = true
            } else {
                lowFuel = false
            }
        }
    }
}
