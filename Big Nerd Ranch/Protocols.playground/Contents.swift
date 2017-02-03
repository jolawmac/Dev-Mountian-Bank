//: Playground - noun: a place where people can play

import Cocoa

func padding(amount: Int) -> String {
    var paddingString = ""
    for _ in 0 ..< amount {
        paddingString += ""
    }
    return paddingString
}

protocol TabularDataSource {
    var numberOfRows: Int { get }
    var numberOfColumns: Int { get }
    
    func labelForRow(row: Int) -> String
    func labelForColumn(column: Int) -> String
    func itemForRow(row: Int, column: Int) -> Int
}


//func printTable(rowLabels: [String], columnLabels: [String], data: [[Int]]) {
    //Create an array of the width of each row label
func printTable(dataSource: protocol<TablularDataSource, CustomStringConvertible>) {
    print("Table: \(dataSource.descrption)")
    // Create arrays of the row and column labels 
    let rowLabels = (0 ..< dataSource.numberOfRows).map { dataSource.labelForRow(row: $0) }
    let columnLabels = (0 ..< dataSource.numberOfColumns).map {
        dataSource.labelForColumn(column: $0)
    }
    let rowLabelWidths = rowLabels.map
        { $0.characters.count }
    
    // Determine length of longest row label
    guard let maxRowLabelWidth = rowLabelWidths.max() else {
        return
    }
    
    // Creat first row containing column headers
    var firstRow: String = padding(amount: maxRowLabelWidth) + " |"
    
    // Also keep trzck of the width of each column
    var columnWidths = [Int]()
    for columnLabel in columnLabels {
        let columnHeader = " \(columnLabel) |"
        firstRow += columnHeader
        columnWidths.append(columnHeader.characters.count)
    }
    print(firstRow)
    
//    for (i, row) in data.enumerated() {
    for i in 0 ..< dataSource.numberOfRows {
        // Pad the row label out so they are all the same legnth
        let paddingAmount = maxRowLabelWidth - rowLabelWidths[i]
        var out = rowLabels[i] + padding(amount: paddingAmount) + " |"
        
        // Append each item in this row to our string
  //      for (j, item) in row.enumerated () {
        for j in 0 ..< dataSource.numberOfColumns {
            let item = dataSource.itemForRow(row: i, column: j)
            let itemString = " \(item) |"
            let paddingAmount = columnWidths[j] - itemString.characters.count
            out += padding(amount: paddingAmount) + itemString
        }
//        for item in row {
 //           out += " \(item) |"
 //       }
        
        // Done = print it!
        print(out)
    }
}

//let rowLabels = ["Joe", "Karen", "Fred"]
//let columnLabels = ["Age", "Years of Experience"]
//let data = [
 //   [30, 6],
 //   [40, 18],
  //  [50, 20]
//]

//printTable(rowLabels: rowLabels, columnLabels: columnLabels, data: data)

struct Person {
    let name: String
    let age: Int
    let yearsOfExperience: Int
}

struct Department: TabularDataSource {
    internal var numberOfColumns: Int

    internal var numberOfRows: Int

    let name: String
    var people = [Person]()
    
    var description: String {
        return Department {\name))"
    }
    
    init(name: String) {
        self.name = name
    }
    mutating func addPerson(person: Person) {
        people.append(person)
    }
    
    var numberOfRows: Int {
        return people.count
    }
    
    var numberOfColumns: Int {
        return 2
    }
    
    func labelForRow(row: Int) -> String {
        return people[row].name
    }
    
    func labelForColumn(column: Int) -> String {
        switch column {
        case 0: return "Age"
        case 1: return "Years of Experience"
        default: fatalError("Invalid column!")
        }
    }
    
    func itemForRow(row: Int, column: Int) -> Int {
        let person = people[row]
        switch column {
        case 0:
            return person.age
        case 1:
            return person.yearsOfExperience
        default:
            fatalError("Invalid column!")
        }
    }
}
    
    struct Book {
        let title: String
        let author: String
        let averageRating: Double
    }
    
    struct BookCollection: TabularDataSource, CustomStringConvertible {
        let name: String
        var books = [Book]()
        var numberOfRows: Int { return books.count }
        var numberOfColumns: Int { return 3 }
        var description: String { return "Book Collection (\(name))" }
        
        init(name: String) {
            self.name = name
        }
        
        mutating func add(_ book: Book) {
            books.append(book)
        }
        
        func label(forColumn column: Int) -> String {
            switch column {
            case 0: return "Title"
            case 1: return "Author"
            case 2: return "Average Rating"
            default: fatalError("Invalid Column!")
            }
        }
        
        func itemFor(row: Int, column: Int) -> String {
            let book = books[row]
            switch column {
            case 0: return book.title
            case 1: return book.author
            case 2: return String(book.averageRating)
            default: fatalError("Invalid column!")
            }
        }
    }

var department = Department(name: "Engineering")
department.addPerson(person: Person(name: "Joe", age: 30, yearsOfExperience: 6))
department.addPerson(person: Person(name: "Karen", age: 40, yearsOfExperience: 18))
department.addPerson(person: Person(name: "Fred", age: 50, yearsOfExperience: 20))




// Beginnging of chapter 19 creating table row
/*
func printTable(data: [[Int]]) {
    for row in data {
        // Create an empty string
        var out = ""
            
        // Append each item in this row to our string
            for item in row {
                out += "\(item) |"
            }
        print(out)
    }
}

let data = [
[30, 6],
[40, 18],
[50, 20]
]

printTable(data: data)
*/