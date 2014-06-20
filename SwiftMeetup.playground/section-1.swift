// View -> Assistant Editor -> Show Assistant Editor
// View -> Utilities -> Show File Inspector

import Cocoa

var helloStr = "Hello World"

// Variables & Constants
let monthsInYear = 12
var daysInMonth = 31
daysInMonth = 30

// Basic Types
// Float / Double
let implicitFloat = 1.50
let explicitFloat: Float = 10
let explicitDouble: Double = 100
// Bool
let isFinished = false
// String
let title = "Swift Developers Meetup"
// Interpolated string
let monthStr = "There are \(monthsInYear) months in a year"
println(monthStr)

// Arrays & Dictionaries
var musicGenres = ["pop", "metal", "punk", "anklecore"]
musicGenres[3] = "bluegrass"
musicGenres

var tourDates = [
    "7/1": "New York, NY",
    "7/2": "Brooklyn, NY",
    "7/3": "Boston, MA"
]
tourDates["7/4"] = "Philadelphia, PA"
tourDates

let emptyArray = Int[]()
let emptyDictionary = Dictionary<String, Int>()

// Control Flow
// if statement
let numShows = 4
if tourDates.count < numShows {
    println("More dates to book")
} else if tourDates.count == numShows {
    println("Tour is booked!")
} else {
    println("Tour is overbooked!")
}
// for loop
for genre in musicGenres {
    println("Music genre: \(genre)")
}
for (date, city) in tourDates {
    println("\(date): \(city)")
}
var value = 0
for i in 0..3 { // Omit upper value
    value += i
}
value
value = 0
for i in 0...3 { // Include upper value
    value += i
}
value
// Switch
let myShowDate = "7/5"
switch myShowDate {
    case "7/1", "7/2":
        let str = "See you in NYC!"
    case "7/3":
        let str = "See you in Boston!"
    case "7/4":
        let str = "See you in Philadelphia!"
    case let x where x.hasPrefix("7/"):
        let str = "See you in July!"
    default:
        let str = "See you on tour!"
}
// Optionals
var bandName: String? = "Rainbow Destroyer"
if let name = bandName {
    let welcomeStr = "Please welcome to the stage... \(bandName)!"
} else {
    let welcomeStr = "Please welcome to the stage... TBD"
}

// Functions
func fanCount(city: String, numFans: Int) -> String {
    return "\(numFans) fans came to the \(city) show!"
}
fanCount("NYC", 1000)
let str = fanCount("NYC", 1000)

func totalFans(numFans: Int...) -> Int {
    var total = 0
    for fans in numFans {
        total += fans
    }
    return total
}
totalFans(1000, 850, 545, 750)
// Tuple
func top2Cities() -> (String, String) {
    return ("NYC", "Brooklyn")
}
top2Cities()

// Visual Debugging
// Color
let blueColor = NSColor.blueColor()
// URL
let myUrl = NSURL.URLWithString("http://meetup.com/Brooklyn-Swift-Developers")
// Image
let metalImg = NSImage(named: "metal-craig")
let metalImgView = NSImageView(frame: NSRect(x: 0, y: 0, width: metalImg.size.width, height: metalImg.size.height))
metalImgView.image = metalImg

// Functional
var numbers = [45, 23, 1, 6, 78]
numbers.sort({ $0 < $1 })
numbers
numbers = numbers.map({ number in 3 * number })
numbers
