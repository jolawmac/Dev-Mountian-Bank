//: Playground - noun: a place where people can play

import UIKit

/* var str = "Hello, playground"

var hello = "Hi"
hello = "Hello world!"

var helloWorldFromJosh = "Hi"
var helloWorldFromjosh = "Hello"

print(helloWorldFromJosh)
print(helloWorldFromjosh)

helloWorldFromJosh
helloWorldFromjosh

// my comment goes here 
/* hellow
 I love cows!
 */

var greeting = "Hello"
var name = "Josh"

var completedGreeting = greeting + name


var myNumber = 10
var myNewNumber = 11
var addedNumbers = myNumber + myNewNumber


/*:
 #### Beginning Swift Video Tutorial Series - raywenderlich.com
 #### Video 2: Variables
 
 **Note:** If you're seeing this text as comments rather than nicely-rendered text, select Editor\Show Rendered Markup in the Xcode menu.
 */

import UIKit

//: Declare a constant of type Int called myAge and set it to your age.

var myAge = 33


//: Declare a variable of type Double called averageAge. Initially, set it to your own age. Then, set it to the average of your age and my own age of 30.

var averageAge = 33.0
var hisAge = 30.0
var average = averageAge / hisAge



//: Create a variable called answer and initialize it with the value 0. Increment it by 1. Add 10 to it. Multiply it by 10 and divide by 3. After all of these operations, what’s the answer?

var answer = 0
answer += 1
answer += 10
answer * 10
answer / 3


//: Declare two constants a and b of type Double and assign both a value. Calculate the average of a and b and store the result in a constant named average.

var a = 4.0
var b = 5.0
average = a / b

// Part 3 Types 

var greetingHi = "Hello World"

var anotherGreeting: String = "Hello String"
var cost = 60
var anotherCost: Int = 60

var pi = 3.141
var morePi: Double = 3.141
var myFloat: Float = Float(morePi)
var emoji: Character = "😤"
var likeSwift: Bool = true

Double(cost) + morePi
cost + Int(morePi)
"I like " + String(morePi)

//: Playground - noun: a place where people can play

import UIKit

/*:
 #### Beginning Swift Video Tutorial Series - raywenderlich.com
 #### Video 3: Types
 
 **Note:** If you're seeing this text as comments rather than nicely-rendered text, select Editor\Show Rendered Markup in the Xcode menu.
 */

//: Declare a constant of type Bool called likesPizza. Set it to your preference
var likesPizza = true
// var likesPizza: Bool = true


//: Declare a variable of type Character called happyPlace. Set it to a happy emoji. (Hint: Access emojis by Edit\Emojis & Symbols)
var happyPlace: Character = "😀"

//: Declare a constant of type Int called myAge and set it to your age.
// let myAge: Int = 33

//: Declare a variable of type Double called averageAge. Initially, set it to your own age. Then, set it to the average of your age and my own age of 30.
// var averageAge: Double = 42.0
averageAge = Double(myAge) + averageAge
averageAge /= 2

//: **Ub3r H4ck3r Challenge** - Declare a variable of type Character called sadPlace. Set it to a happy emoji. Declare a variable of type String called drama. Combine both happyPlace and sadPlace.
var sadPlace = "😞"
// var drama = happyPlace + sadPlace

// Part 4 Strings

let characterD: Character = "\""

var message = "Hello" + " my name is "
message += "Josh"

var newSentence = "What's \t up my "
newSentence += "nigga!?"

let nameFirst = "Josh"
let newMessage = "Hello my name is \(nameFirst)!"


var nameLast = "McDonald"
var fullName = nameFirst + nameLast + ", how are you doing?"
var story = "\"Put down that gun,\" John said."
print(story)

var who = "Ray"
var storyHeader = "\"Put down the gun,\""
var storyFooter = "said."
var anotherStory = storyHeader + who + storyFooter
anotherStory = storyHeader + " " + who + " " + storyFooter
print(anotherStory)

anotherStory = storyHeader + " \t" + who + " " + storyFooter

anotherStory = storyHeader + " \n" + who + " " + storyFooter
print(anotherStory)

var yetAnotherStory = "\"Put down the gun,\" \(who) said."
var quote: Character = "\""
print(quote)
yetAnotherStory = "\(quote)Put down the gun,\(quote) \(who) said."
print(yetAnotherStory)

yetAnotherStory.uppercased()
yetAnotherStory.lowercased()
yetAnotherStory.isEmpty
"".isEmpty
" ".isEmpty
*/

//var message = "Hello" + "my name is" + " "
//message += "Josh"
//let name = "Josh"
//let message = "Hello my name is \(name)."

//var str = "Hello, playground!"
//var str2 = str + ", how are you doing?"
//var story = "\"Put down the gun,\" John said."
//print(story)

//var name = "Josh"
//var storyHeader = "\"Put down the gun,\""
//var storyFooter = "said."
//var anotherStory = storyHeader + name + storyFooter
//anotherStory = storyHeader + " " + name + " " + storyFooter
//print(anotherStory)

//var yetAnotherStory = "\"Put down the gun,\" \(name) said."
//print(yetAnotherStory)
//var quote: Character = "\""
//yetAnotherStory = "\(quote)Put down the gun,\(quote) \(name) said."
//print(yetAnotherStory)

//yetAnotherStory.uppercased()
//yetAnotherStory.lowercased()
//yetAnotherStory.isEmpty
//"".isEmpty
//" ".isEmpty

// TUPLES:

//var monster = ("Reaper", 100, true)
//monster.0

//var anotherMonster: (String, Int, Bool)
//anotherMonster = ("Savager", 50, false)

//var yetAnotherMonster = (name: "Blobby", hitPoints: 25, isAggroed: true)
//yetAnotherMonster.hitPoints

//var (name, hp, aggroed) = monster
//name


// IF STATEMENTS: 

var money = 1000

if money > 1300 {
    print("you can buy the ceramic apple watch.")
} else if money > 270 {
    print("you can buy a sport band apple watch.")
} else {
    print("you can watch a watch in the Apple store")
}


var likeSwift = true
if money > 1300 || likeSwift {
    print("you can buy the ceramic apple watch.")
} else if money > 270 {
    print("you can buy a sport band apple watch.")
} else {
    print("you can watch a watch in the Apple store")
}

var ownsWatch = false
var likesApple = true

if money > 1300 && likeSwift {
    print("you can buy the ceramic apple watch.")
    ownsWatch = true
} else if money > 270 {
    print("you can buy a sport band apple watch.")
    if likesApple {
        ownsWatch = true
    }
} else {
    print("you can watch a watch in the Apple store")
}

ownsWatch


// CREATING IF STATEMENTS AND NESTED IFS



/* Create a constant called myAge and initialize it with your age. Write an if statement to print out Teenager if your age is between 13 and 19, and Not a teenager if your age is not between 13 and 19.
 
 let myAge = 33
 
 if myAge >= 13 && myAge <= 19 {
 print("Teenager")
 } else {
 print("Not Teenager")
 }
 
 
 //: **Ub3r H4ck3r Challenge** - Expand this if statement to print out the categories and subcategories of an age. For all ages greater than 19, print out "Adult". For ages between 40-65 print "Middle Age" and for ages higher than 65, print out "Senior Citizen". For all ages, less than thirteen, print "Pre teen". For ages between "1-4", write "toddler" and for ages between 5-12, write "Child".
 
 
 /* 
 if myAge >= 1 && myAge <= 4 {
 print("Toddler")
 } else if myAge >= 5 && myAge <= 12 {
 print("Child")
 } else if myAge <= 13 {
 print("Pre teen")
 } else if myAge >= 19 {
 print("Adult")
 } else if myAge >= 40 && myAge <= 65 {
 print("Middle Age")
 } else if myAge >= 65 {
 print("Senior Citizen")
 */
 
 if myAge <= 12 {
 print("Pre-teen")
 if myAge >= 1 && myAge <= 4 {
 print("Toddler")
 }
 if myAge >= 5 && myAge <= 12 {
 print("Child")
 }
 } else if myAge >= 12 && myAge  <= 19 {
 print("Teenager")
 } else {
 print("Adult")
 if myAge >= 40 && myAge <= 65 {
 print("Middle Age")
 }
 if myAge > 65 {
 print("Senior Citizen")
 }
 }*/
