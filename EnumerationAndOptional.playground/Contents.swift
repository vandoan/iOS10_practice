


enum Day: Int {
    case sunday = 1
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
}

print(Day.friday.rawValue)


enum DayType {
    case weekend
    case weekday
}

func dayType(for day:Day) -> DayType {
    switch day {
    case .saturday, .sunday: return .weekend
    case .monday, .tuesday, .wednesday, .thursday, Day.friday: return DayType.weekday
    }
}

func isNotifacationMuted(on type: DayType) -> Bool {
    switch type {
    case .weekend: return true
    case .weekday: return false
    }
}

let type = dayType(for: .saturday)

let isMuted = isNotifacationMuted(on: .weekend)



import UIKit
enum ColorComponent {
    case rgb(red: Float, green: Float, blue: Float, alpha: Float)
    case hsb(hue: CGFloat, saturation: CGFloat, brightness: CGFloat, alpha: CGFloat)
    
    func color() -> UIColor {
        switch self {
        case .rgb(let red, let green, let blue, let alpha):
            return UIColor(colorLiteralRed: red/255.0, green: green/255.0, blue: blue/255.0, alpha: alpha)
        case .hsb(let hue, let saturation, let brightness, let alpha):
            return UIColor(hue: hue/360.0, saturation: saturation/100.0, brightness: brightness/100.0, alpha: alpha)
        }
    }
}

ColorComponent.rgb(red: 61.0, green: 102.2, blue: 55.0, alpha: 1).color()








let weatherDictionary: [String : [String : String]] = [
    "currently": ["temperature": "78.2"],
    "daily": ["temperature": "82.5"],
    "weekly": ["temperature": "80.1"]
]

// optional binding using if let, use to check not null
if let dailyWeather = weatherDictionary["daily"], let highTemperature = dailyWeather["temperature"] {
    print(highTemperature)
}





struct Friend {
    let name: String
    let age: String
    let address: String?
    
//    init?(dictionary: [String: String]) {
//        return nil
//    }
}

func newFriend(friendDictionary: [String: String]) -> Friend? {
    guard let name = friendDictionary["name"], let age = friendDictionary["age"] else {
        return nil
    }
    let address = friendDictionary["address"]
    return Friend(name: name, age: age, address: address)
}


enum Coin: Double {
    case penny = 0.01
    case nickel = 0.05
    case dime = 0.10
    case quarter = 0.25
}


let pocketChange: [Coin] = [.penny, .quarter, .dime, .penny, .nickel]

func sum(having coins: [Coin]) -> Double {
    var total: Double = 0
    
    for coin in coins {
        total += coin.rawValue
    }
    return total
}

sum(having: pocketChange)


for coin in pocketChange {
    if case .nickel = coin {
        print("a nickel!")
    } else if case .dime = coin {
        print("a dime.")
    }
}

var count = 0

for coin in pocketChange {
    switch coin {
    case .quarter: count += 1
    default: continue
    }
}




enum HTTPStatusCode: Int {
    case success = 200
    case unauthorized = 401
    case forbidden = 403
    case notFound = 404
}

let statusCode = 200
if let httpStatusCode = HTTPStatusCode(rawValue: statusCode) {
    print(httpStatusCode)
}




enum Compass: Int {
    case north
    case south
    case east
    case west
}

let direction = Compass(rawValue: 4)



let firstName: String? = "Poisedon"
let userName = "poisdn"

var displayName: String

if let name = firstName {
    displayName = name
} else {
    displayName = userName
}


let displayName = firstName ?? userName













class Point {
    var x: Int
    var y: Int
    
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
}

enum Direction {
    case left
    case right
    case up
    case down
}

class Robot {
    var location: Point
    
    init() {
        self.location = Point(x: 0, y: 0)
    }
    
    func move(_ direction: Direction) -> Point {
        // Enter your code below
        switch direction {
        case .up: location.y += 1
        case .down: location.y -= 1
        case .left: location.x -= 1
        case .right: location.x += 1
        }
        return Point(x: location.x, y: location.y)
    }
}










enum MobilePhone {
    case iphone(String)
    case android(String)
    case windowsPhone(String)
}

let iphone = MobilePhone.iphone("7 Plus")





enum BarButton {
    case done(title: String)
    case edit(title: String)
    
    func button() -> UIBarButtonItem {
        switch self {
        case .done(let title): return UIBarButtonItem(title: title, style: .done, target: nil, action: nil)
        case .edit(let title): return UIBarButtonItem(title: title, style: .plain, target: nil, action: nil)
    
        }
    }
}



let done = BarButton.done(title: "Save")
let doneButton = done.button()












struct Book {
    let title: String
    let author: String
    let price: String?
    let pubDate: String?
    
    init?(dict: [String: String]){
        guard let title = dict["title"], let author = dict["author"] else {
            return nil
        }
        
        self.title = title
        self.author = author
        self.price = dict["price"]
        self.pubDate = dict["pubDate"]
    }
}






let movieDictionary = ["Spectre": ["cast": ["Daniel Craig", "Christoph Waltz", "Léa Seydoux", "Ralph Fiennes", "Monica Bellucci", "Naomie Harris"]]]

var leadActor: String = ""

// Enter code below

//if let currentMovie = movieDictionary["Spectre"], let currentCast = currentMovie["cast"], let leadActor = currentCast[0] {
//    print leadActor
//}


