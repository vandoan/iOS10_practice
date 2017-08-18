

struct Tag {
    let name: String
}

struct Post {
    let title: String
    let author: String
    let tag: Tag
    
    func description() -> String {
        return "\(title) by \(author). Filed under \(tag.name)"
    }
}

let swift = Tag(name: "swift")
swift
let firstPost = Post(title: "iOS Development", author: "Apple", tag: swift)

let postDescription = firstPost.description()










class Point {
    var x: Int
    var y: Int
    
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
}

class Machine {
    var location: Point
    
    init() {
        self.location = Point(x: 0, y: 0)
    }
    
    func move(_ direction: String) {
        print("Do nothing! I\'m a machine!")
    }
}

// Enter your code below

class Robot: Machine {
    override func move(_ direction: String) {
        switch direction {
            case "Up": location.y += 1
            case "Down": location.y -= 1
            case "Left": location.x -= 1
            case "Right": location.x += 1
            default: break
        }
        
    }
}










