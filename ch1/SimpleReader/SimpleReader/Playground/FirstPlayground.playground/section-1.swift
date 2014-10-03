// Playground - noun: a place where people can play
// Simple code is reference from - http://www.raywenderlich.com/74438/swift-tutorial-a-quick-start
import UIKit

// Varibles vs. Constants
var firstTeam = "Lakers" // Varibles, you can change its value
firstTeam = "Clippers"

let secondTeam = "Tigers" // Constants, you can't change its value after define (try it at viewController)
secondTeam = "Kings" // Incorrect


// Explicit vs. Inferred Typing
let tutorialTeam: Int = 56
let tutorialTeam = 56


// Basic Types and Control Flow in Swift
let priceInferred = 19.99
let priceExplicit: Double = 19.99

// Bools
let onSaleInferred = true
let onSaleExplicit: Bool = false

// Strings
let nameInferred = "Whoopie Cushion"
let nameExplicit: String = "Whoopie Cushion"

// If statements and string interpolation
if onSaleInferred {
    println("\(nameInferred) on sale for \(priceInferred)!")
} else {
    println("\(nameInferred) at regular price: \(priceInferred)!")
}

// Arrays and For Loops
var array = [1, 2, 3, 4]
var incorrectStringArray:[String] = ["Liyao", "Chen", "Lobo", 1] // Incorrect, last object must be String
var correctStringArray:[String] = ["Liyao", "Chen", "Lobo"]

for str in correctStringArray
{
    println(str)
}

for i in 0..<correctStringArray.count
{
    var value = correctStringArray[i]
    println("index = \(i), value = \(value))")
}

// Dictionaries
// Dictionary just like JSON format( key-value data colleciton )
var dictionary = [ // General JSON
    "key": "value",
    "key2": "value2"
]

var dic:[Int: Double] = [
    0: 22.0,
    10: 30.9
]

var stringDic:[String: String] = [
    "key": "value",
    "key2": "value2"
]

func returnPossibleTips() -> [Int: Double] {
    
    let possibleTipsInferred = [0.15, 0.18, 0.20]
    let possibleTipsExplicit:[Double] = [0.15, 0.18, 0.20]
    
    // 2
    var retval = Dictionary<Int, Double>()
    for possibleTip in possibleTipsInferred {
        let intPct = Int(possibleTip*100)
        // 3
        retval[intPct] = calcTipWithTipPct(possibleTip)
    }
    return retval
    
}

