let x1 = 0
let y1 = 0

let coordinate1: (x: Int, y: Int) = (0,0)

coordinate1.x



struct User {
    let name: String
    let age: Int
}


struct Book {
    let title: String
    let author: String
    let price: Double
}


struct Point {
    let x: Int
    let y: Int
    
    // Returns the surrounding points in range of current one
    func points(inRange range: Int = 1) -> [Point]{
        var results = [Point]()
        
        let upperBoundOfXRange = x + range
        let lowerBoundOfXRange = x - range
        
        let upperBoundOfYRange = y + range
        let lowerBoundOfYRange = y - range
        
        for xCoordinate in lowerBoundOfXRange...upperBoundOfXRange {
            for yCoordinate in lowerBoundOfYRange...upperBoundOfYRange {
                let coordinatePoint = Point(x: xCoordinate, y: yCoordinate)
                results.append(coordinatePoint)
            }
        }
        
        return results
    }
}



//
//let coordinatePoint = Point(x: 0, y: 0)
//coordinatePoint.x
//coordinatePoint.points()


let myBook = Book( title: "Animal Farm", author: "George Orwell", price: 6.00)

myBook.title






//struct Person {
//    let firstName: String
//    let lastName: String
//    
//    func fullName() -> String {
//        return "\(firstName) \(lastName)"
//    }
//}
//
//let aPerson = Person(firstName: "Pete", lastName: "Bill")
//let myFullName = aPerson.fullName()




struct RGBColor {
    let red: Double
    let green: Double
    let blue: Double
    let alpha: Double
    
    let description: String
    
    // Add your code below
    
    init(red: Double, green: Double, blue: Double, alpha: Double){
        self.red = red
        self.green = green
        self.blue = blue
        self.alpha = alpha
        
        description = "red: \(red), green: \(green), blue: \(blue), alpha: \(alpha)"
    }
}



class Enemy {
    var life = 2
    let position: Point
    
    init(x: Int, y: Int){
        self.position = Point(x: x, y: y)
    }
    
    func decreaseLife( by factor: Int) {
        life -= factor
    }
}

class SuperEnemy: Enemy {
    let isSuper: Bool = true
    
    override init(x: Int, y: Int) {
        super.init(x: x, y: y)
        self.life = 50
    }
}




class Shape {
    var numberOfSides = 4
    
    init(numberOfSides: Int){
        self.numberOfSides = numberOfSides
    }
}

let someShape = Shape(numberOfSides: 5)




struct Location {
    let latitude: Double
    let longitude: Double
}

class Business {
    let name: String
    let location: Location
    
    init(name: String, location: Location){
        self.name = name
        self.location = location
    }
}


let location = Location(latitude: 34.0, longitude: 32.0)
let someBusiness = Business(name: "Hello", location: location)



class Tower {
    let position: Point
    var range: Int = 1
    var strength: Int = 1
    
    init(x: Int, y: Int){
        self.position = Point(x: x, y: y)
    }
    
    func fire(at enemy: Enemy) {
        if isInRange(of: enemy) {
            enemy.decreaseLife(by: strength)
            print ("Bam!")
        } else {
            print("Missed")
        }
    }
    
    func isInRange(of enemy: Enemy) -> Bool {
        let availablePositions = position.points(inRange: range)
            
        for point in availablePositions {
            if point.x == enemy.position.x && point.y == enemy.position.y {
                return true
            }
        }
            
        return false
    }
}


let tower = Tower(x: 1, y: 1)
let enemy = Enemy(x: 0, y: 0)
let superEnemy = SuperEnemy(x: 3, y: 2)
superEnemy.life

//tower.fire(at: enemy)


class Vehicle {
    var numberOfDoors: Int
    var numberOfWheels: Int
    
    init(withDoors doors: Int, andWheels wheels: Int) {
        self.numberOfDoors = doors
        self.numberOfWheels = wheels
    }
}

// Enter your code below
class Car: Vehicle {
    var numberOfSeats: Int = 4
}

let someCar = Car(withDoors: 4, andWheels: 4)


// initiate super var then subclass var
class LaserTower: Tower {
    override init(x: Int, y: Int) {
        super.init(x: x, y: y)
        self.range = 100
        self.strength = 100
    }
    override func fire(at enemy: Enemy) {
        while enemy.life > 0 {
            enemy.decreaseLife(by: strength)
        }
        print("Enemy destroyed.")
    }
}


let laserTower = LaserTower(x: 2, y: 2)


class Person {
    let firstName: String
    let lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func fullName() -> String {
        return "\(firstName) \(lastName)"
    }
}

// Enter your code below

class Doctor: Person {
    override init(firstName: String, lastName: String){
        super.init(firstName: firstName, lastName: lastName)
    }
    override func fullName() -> String {
        return "Dr. \(lastName)"
    }
}

let someDoctor = Doctor(firstName: "Bob", lastName: "Smith")
someDoctor.fullName()

