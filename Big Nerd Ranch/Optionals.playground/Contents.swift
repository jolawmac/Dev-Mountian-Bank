//: Playground - noun: a place where people can play

import Cocoa
//
//var errorCodeString: String?
//errorCodeString = "404"
////print(errorCodeString)
////if errorCodeString != nil {
////    let theError = errorCodeString!
//if let theError = errorCodeString, errorCodeInteger = Int(theError)
////    print(theError)
////    if let errorCodeInteger = Int(theError) {
//    where errorCodeInteger == 404 {
//        print("\(theError): \(errorCodeInteger)")
////}
//}
//
//var errorCodeString: String!
//errorCodeString = "404"
//print(errorCodeString)
//
//var errorCodeString: String?
//errorCodeString = "404"
//var errorDescription: String?
//if let theError = errorCodeString, errorCodeInteger = Int(theError)
//    where errorCodeInteger == 404 {
//    errorDescription = ("\(errorCodeInteger + 200): the requested resource was not found.)
//    var upCaseErrorDescription = errorDescription?.uppercaseString
//    errorDescription
//}
//
//upCaseErrorDescription?.appendContentsOf(" PLEASE TRY AGAIN")
//upCaseErrorDescription
//
//let description: String
//if let errorDescrption = errorDescription {
//    description = errorDescription
//} else {
//    description = "No error"
//}
//}
//
//errorDescription - nil
//let description = errorDescription ?? "No error"


//CHALLENGE

//var name: String? = nil
//name!




// SECOND TIME TO GO THROUGH CHAPTER:

var errorCodeString: String?
errorCodeString = "404"
var errorDescription: String?

//print(errorCodeString)

//if errorCodeString != nil {
//    let theError = errorCodeString!

if let theError = errorCodeString, let errorCodeInteger = Int(theError) where errorCodeString == 404 {
//        print("\(theError): \(errorCodeInteger)")
    errorDescription = ("\(errorCodeInteger + 200): the requested resolution was not found.")
}
var upCaseErrorDescription = errorDescription?.uppercased()
errorDescription

upCaseErrorDescription?.append(contentsOf: "PLEASE TRY AGAIN.")
upCaseErrorDescription

//let description: String
//if let errorDescription = errorDescription {
//    description = errorDescription
//} else {
//    description = "No error"
//}

let description = errorDescription ?? "No error"


// SILVER CHALLENGE: 

var catName: String? = nil

if catName != nil {
    var theName = catName!
}
print(catName)
