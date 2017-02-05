//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

struct Page {
    var words = 0
}

class Story {
    var title: String
    var author: String
    var year: Int
    var pages: [Page]
    
    init(title: String, author: String, year: Int) {
        self.title = title
        self.author = author
        self.year = year
        pages = [Page]()
    }
    
    convenience init(title: String) {
        self.init(title: title, author: "Uknown", year: 2016)
    }
    
    func addPage(_ page: Page) {
        pages.append(page)
    }
}

class ShortStory: Story {
    var maxPageCount = 2
    
    init(){
        maxPageCount = 2
        super.init(title: "Unknown Story", author: "Unknown Author", year: 2016)
    }
    
    override func addPage(_ page: Page) {
        if pages.count < maxPageCount {
            super.addPage(page)
        }
    }
}

var story = ShortStory()
story.title = "The Haunting of Hill House"
story.addPage(Page(words: 300))
story.addPage(Page(words: 300))
story.addPage(Page(words: 300))
story.pages.count
story.author



// Inheritance Challege: 

//: Create a class called Account that has a balance property. Have the balance set to 0. Create a function to withdrawl money from the balance. Make sure the withdrawl amount is greater than 0 and the amount is less than the balance.

class Account {
    var balance = 0
    
    func withdrawl(_ amount: Int) {
        if amount > 0 && amount < balance {
        balance -= amount
        }
    }
}

//: Create a subclass called SavingsAccount and override withdrawl(). In this method, make sure that the withdrawn amount is greater than 10.

    class SavingsAccount: Account {
        override func withdrawl(_ amount: Int) {
            if amount > 10 {
                super.withdrawl(amount)
            }
        }
}



// Initializer Challenge: 

//: Create a story class that contains two string properties: name and a writer. Provide an a init() that sets both properties

class Storyz {
    var name: String
    var writer: String
    
    init(name: String, writer: String) {
        self.name = name
        self.writer = writer
    }
}


//: Create a new Movie class that is a sublcass of the story class. Give it a new string propery called directory. Create a init that sets the director, name, and writer properties.

class Movie: Storyz {
    var director: String
    
    init(director: String, name: String, writer: String) {
        self.director = director
        super.init(name: name, writer: writer)
    }

//: Create a convenience init that takes just a director's name. Set the name to "Unknown Title" and the writer to "Unknown writer"

convenience init(director: String) {
    self.init(director: director, name: "Unknown Title", writer: "Unknown writer")
}
}
