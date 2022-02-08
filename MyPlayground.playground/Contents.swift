import UIKit
/**This file is used to learn the basic concepts of swift programming. Including variable constants and all data type concepts.**/

/**This is a program that I am creating to learn Swift and Git**/
var value:Float = 4
print(value)
/**This line is used to try concatonation**/
let fixed = "My name is "
var name = "Ashish"
var statement = fixed + name
print(statement)
/**This line is to try out concatonation with type difference**/
let intro = "My age is "
var age = 24
var statement1 = intro + String(age)
print(statement1)

/**This line is to try another method of adding variables to strings**/
let apples = 3
let oranges = 4
let appleSummary = "I have \(apples) apples"
let orangesSummary = "I have \(oranges) oranges"
print(appleSummary)
print(orangesSummary)

/**This section is to try multiple-line strings**/
let quotations = """
Like i said earlier,
"I have \(apples) apples and \(oranges) oranges"
In total I said " I have \(apples+oranges) fruits"
"""
print(quotations)

/**The following lines show arrays and dictionaries**/
var shoppingList = ["Toothpaste","Toothbrush","Tonguecleaner"]
print(shoppingList[0])

/**Dictionary with huband/wife or bf/gf**/
var coupleGoals = [
    "Aman":"Sanjana",
    "Uday":"Gopika",
    "Akshay":"Twinkle"]
print("Akshay's wife is " + coupleGoals["Akshay"]!)

/**Following lines show the creation of empty list and dictionary**/
var emptyArray:[String] = []
var emptyDict:[String:String] = [:]
emptyArray.append("Haloo")
print(emptyArray)
emptyDict["Humans"] = "2Legs"
print(emptyDict)

/**From this point on, conditionals loops etc will be tried out**/
var scoreList = [26,67,78,15,65,51]
var teamScore = 0
for score in scoreList{
    if score > 50{
        teamScore += 3
    }
    else{
        teamScore -= 1
    }
}
print(teamScore)


//Conditionals along with optional variables
var optionalString: String? = "Hello"
print(optionalString == nil)
// Prints "false"

var optionalName: String? = "John Appleseed"
var greeting = "Hello!"
optionalName = nil
if let name = optionalName {
    greeting = "Hello, \(name)"
    print(greeting)
}
else{
    print("No name")
}

//More optionals
var names : String? = nil
names = "Chandrchur Singh"
let fullName = "Bhyomkesh Kumar"
print("The name is \(names ?? fullName)")

//Copied from the Swift page
let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.")
}

var numberGroups = [
    "Prime":[2,3,5,7,11,13,17,23,29,31,37],
"Fibonnacci":[0,1,1,2,3,5,8,13,21,34,55],
    "Square":[1,4,9,16,25,36,49,64,81]]
var largest = 0
for (_,numbers) in numberGroups{
    for number in numbers{
        if number>largest{
            largest = number
    }
}
}
print(largest)
        
