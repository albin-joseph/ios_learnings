import UIKit

var greeting = "Hello, playground"
let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
var type: String
for (_, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
print(largest)
// Prints "25"

//Checking answer
var total = 0
for i in 0..<4 {
    total += i
}
print(total)

func greet(person:String, day:String)->String{
    return "Hello \(person). Today is a \(day)"
}
print(greet(person:"Bob",day:"Monday"))

func greet(_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)."
}
print(greet("John", on: "Wednesday"))


func calc(scores:[Int])->(min : Int, max : Int, sum : Int){
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    for score in scores{
        if score>max{
            max = score
        }
        else if score < min{
                min = score
            }
        sum += score
        }
    return (max,min,sum)
    }
let result = calc(scores:[1,2,3,4,5,6,7])
print(result)

func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
increment(7)

//Classes
class Shape {
    var numberOfSides = 0
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}
var shape = Shape()
shape.numberOfSides = 7
var shapeDescription = shape.simpleDescription()
print(shapeDescription)

