


protocol FullNameable {
    var fullName: String { get }
}

struct User: FullNameable {
    var fullName: String
}


let user = User(fullName: "Bill Bison")

struct Friend: FullNameable {
    let firstName: String
    let middleName: String
    let lastName: String
    
    var fullName: String {
        return "\(firstName) \(middleName) \(lastName)"
    }
}

let friend = Friend(firstName: "Bill", middleName: "Bob", lastName: "Thorn")
print(friend.fullName)

protocol User1 {
    var name: String { get }
    var age: Int {get set}
}


struct Person: User1 {
    let name: String
    var age: Int
}

let somePerson = Person(name: "Bill", age: 29)


protocol ColorSwitchable {
    func switchColor(_ color: Color)
}