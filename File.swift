


protocol FullNameable {
    var fullName: String { get }
}

struct User: FullNameable {
    var fullName = String
}


let user = User(fullName: "Bill Bison")

struct Friend: FullNameable {
    let firstName = String
    let middleName = String
    let lastName = String
    
    var fullName: string {
        
        "\(firstName) \(middleName) \(lastName)"
    }
}

let friend = Friend(firstName: "Bill", middleName: "Bob", lastName: "Thorn")
print(friend.fullName)

protocol User {
    var name: String { get }
    var age: Int {get set}
}

protocol User {
    var name: String {get}
    var age: Int {get set}
}
