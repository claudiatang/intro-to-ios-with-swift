/*:
 # Constants & Variables
 
 ### Constants
 `let` : Use this keyword when your value is not going to change during the lifetime of your code (ie. legs on a table, starting destination on a road trip)
 
    let numberOfWheels = 4
 
 */
let phoneNumber = 0400111222

/*:
 ### Variables
 `var` : Use the var keyword when you will need to change the value in the future. An example could be the current score in a game of chess, or time left in a race.
 
    var playerOneScore = 102
 
 
 If you are unsure which one to use, its best to use `let` and then change it if/when you need to. Don't worry, Xcode will tell you if you try to change the value of a `let` constant.
 */
var currentGameLeadersName = "Ashleigh"

/*:
 # Data Types
 
 `Boolean`: Use this when something can either be true or false, ie. Are you having fun?
 The values for a boolean will always be lowercased `true` or `false`
 
    var isHavingFun = true
 
 `String`: Use this when you need a word or sentence, ie a name. A string is represented by some text surrounded by quotation marks ("").

    let firstName = "Lauren"
 
 `Int`: A whole number without any decimal places, handy to use for counting.
 
    var currentScore = 102
 
 `Double`: A decimal number. Good for currency or numerical calculations.
 
    var currentBankBalance = 1245.30
 
 For more information, see [Swift - The Basics](https://docs.swift.org/swift-book/LanguageGuide/TheBasics.html)
 
 */
/*:
 # Data Structures
 
 ### Arrays
 Arrays are used to store objects(data types) in order, another way to look at arrays is that they are just a list of things.
 You could have a list of planet names or days of the week.
 
 The syntax (format) is a square bracket ( [ ) containing your values (see above) separated by a comma and the last value followed by the closing square bracket ( ] )
 
 Some examples of functions you can perform on arrays are listed below.
 
Also see [Collection Types documentation](https://docs.swift.org/swift-book/LanguageGuide/CollectionTypes.html)
 */
let planetNames = ["Mercury",
                   "Venus",
                   "Earth",
                   "Mars",
                   "Jupiter",
                   "Saturn",
                   "Uranus",
                   "Neptune",
                   "Pluto"]
planetNames.first

let quarterlyRichmondScores = [12, 26, 37, 52]
// the first object (12) is at position 0
quarterlyRichmondScores[2]

var dailyExpenses = [3.80, 4.20, 12.50, 25.00, 4.30]
dailyExpenses.max()
/*:
 ### Dictionaries
 
Dictionaries are an easy way to store data that is usually associated with a key. The name also implies its function. Dicitonaries work the same as physical dictionary. You have a word that you want to know the meaning of, so you 'lookup' the word in a dictionary. This is the same process in a dictionary data structure. Our 'lookup word' is called a key, and the definiton of that word would be our value.
 
 The syntax of a dictionary is defined as starting with a curly brace ( [ ) then our 'key', which will usually be a String, followed by a colon ( : ) afterwhich we declare our value for that key. You can contnue this key-value assigment multiple times by separating the pairs with a comma (,). After your last pair, remember to close the curly brace ( ] )
 */
let wordDefinitions = ["dog" : "An animal which loves to catch balls and is humans best friend",
    "cat" : "Loves pats (soemtimes) and sleeping. Is fluffy with a tail. Also known as the jerks of the animal kingdom" ]
/*:
 To access the defnition stored under cat, it would look like the following:
*/
 wordDefinitions["cat"]
/*:
 ## Struct
 
 Structures are general-purpose, flexible constructs that become the building blocks of your program’s code. You define properties and methods to add functionality to your structures using the same syntax you use to define constants, variables, and functions.

**NOTE**
Whenever you define a new structure or class, you define a new Swift type. Give types UpperCamelCase names (such as SomeStructure and SomeClass here) to match the capitalization of standard Swift types (such as String, Int, and Bool). Give properties and methods lowerCamelCase names (such as frameRate and incrementCount) to differentiate them from type names.
 
 We won't go too much into depth about classes and structs, but you can read more about them [here](https://docs.swift.org/swift-book/LanguageGuide/ClassesAndStructures.html)
*/
struct Rectangle {
    let width: Int
    let height: Int
}
/*:
 Structs need to be created before they can be used, in programming we refer to this as instantiating the the object, or creating an instance of it.
 We do this so we can refer to a **specific** rectangle, rather than Rectangles in general.
 */
let smallRectangle = Rectangle(width: 200, height: 150)
let largeRectangle = Rectangle(width: 700, height: 320)

smallRectangle.height
largeRectangle.width
/*:
 # Conditionals
 
 ### If
 When you want to execute code if a certain condition is `true` or `false`
 */
var currentTemperature = 13
if (currentTemperature <= 14) {
    print("You should wear a scarf")
}
/*:
 ### If-else
 When you want your code to do another action if the condition check is false
 */
currentTemperature = 17
if (currentTemperature <= 14) {
    print("You should wear a scarf")
} else {
    print("You don't need a scard")
}
/*:
 You can even chain multiple `if-else` checks together
 */
currentTemperature = 3
if (currentTemperature <= 14 && currentTemperature >= 5) {
    print("You should wear a scarf")
} else if (currentTemperature < 5) {
    print("You should stay on the couch")
} else {
    print("You don't need a scard")
}
/*:
 ### Switch statement
 Very useful when you have a multiple checks you wish to perform that you cannot handle in an if-else statement. Switches can handle more complex checks and allow you to add a 'default' option if none of the criteria are met
 */
let someCharacter = "z"
switch someCharacter {
case "a":
    print("The first letter of the alphabet")
case "z":
    print("The last letter of the alphabet")
default:
    print("Some other character")
}
/*:
 # Control Flow
 
 ## For each loop
 When you have a collection of objects or values, a lot of the time you will want to do something to every object contained in the collection.
 An easy way of doing this is using a `for _ in _` loop which will iterate over ever element inside your array
 
 the name after `for` is what you will refer to the individual item as, and the name after in will be the array or collection you want to loop through.
 */
for planet in planetNames {
    print("\(planet) is a planet")
}
/*:
 # Optionals
A data type whose value may be present or not (nil). This handy if we may not know all the data up front or if something isnt required for us.
For example, if we were creating a `House` struct */
struct House {
    let bedrooms: Int
    let bathrooms: Int
    var pool: Pool? = nil
}

struct Pool {
    let depth: Int
    let width: Int
    let length: Int
    var lights: Int
}
/*:
 Not every house will have a pool, but some houses might. So we would make that variable optional.
Use the ? to create an optional of a specified type
 */
var houseWithPool = House(bedrooms: 3,
                          bathrooms: 2,
                          pool: Pool(depth: 2, width: 10, length: 20, lights: 2))
var houseWithoutPool = House(bedrooms: 2,
                             bathrooms: 1,
                             pool: nil)
// Access the variable safely by assigning it to another constant
// Handy if you need multiple properties from it
// Will only execute code inside the if statement if creating housePool was successful
if let housePool = houseWithPool.pool {
    print("Depth of pool: \(housePool.depth)")
    print("Length of pool: \(housePool.length)")
}

// Try to change both pool objects safely
houseWithoutPool.pool?.lights = 5
houseWithPool.pool?.lights = 5
/*:
 ## Functions
 
 To save us repeating code unecessarily, we can create a funciton to house that code that we want to use again.
 In this example, we want to print out some text based on certain characteristics of the pool.
 The function (declared as `func`) is named `describePool` so that it is clear as to what it is doing.
 It will take one parameter `pool: Pool` which we can use to check the values.
 */
func describePool(pool: Pool) {
    if (pool.depth < 1) {
        print("The pool is too shallow")
    } else {
        print("The pool is deep enough")
    }
    
    if (pool.length < 2) {
        print("I think it is a spa!")
    } else if (pool.length < 6 ){
        print("What a small pool!")
    } else {
        print("This pool is a good length for laps")
    }
}
/*:
 If we want to print out the decription of the pool for the `houseWithPool`, we would call our created function(`describePool(pool: Pool)`) like so, ensuring that we are safely unwrapping the pool value from `houseWithPool`
 */
if let housePool = houseWithPool.pool {
    describePool(pool: housePool)
}
