var todo: [String] = [
    "eat",
    "sleep",
    "eat some more",
    "watch tv",
    "use restroom",
    "eat more",
    "sleep",
]

var firstThing = todo[0]
print(todo[0])


for task in todo {
    print(task)
}

// Ranges
// Closed Range Operator a...b
// Half Open Range Operator a..>b
// iteratin through range

for number in 1...5 {
    print("3 x \(number) = \(3*number)")
}

var index = 0;
while index < todo.count {
    print(todo[index])
    index += 1
}

var count = 0
repeat {
    print(count)
    count += 1;
} while count <= 3

var temperature = 70

if temperature < 72 {
    print("It's cold outside.")
} else {
    print("No sweater needed.")
}




//  SWITCHES

switch "TPA" {
case "LGA", "JFK": print ("New York")
case "TPA": print ("Tampa")
default: print("I don't Know that airport")
}






var europeanCapitals: [String] = []
var asianCapitals: [String] = []
var otherCapitals: [String] = []

let world = [
    "BEL": "Brussels",
    "LIE": "Vaduz",
    "BGR": "Sofia",
    "USA": "Washington D.C.",
    "MEX": "Mexico City",
    "BRA": "Brasilia",
    "IND": "New Delhi",
    "VNM": "Hanoi"]

for (key, value) in world {
    // Enter your code below
    switch key {
    case "BEL","LIE","BGR": europeanCapitals.append(value)
    case "IND","VNM": asianCapitals.append(value)
    default: otherCapitals.append(value)
    }
    // End code
}



//FIZZ BUZZ

func fizzBuzz(n: Int) -> String {
    // Enter your code between the two comment markers
        if n % 15 == 0 {
            fizzBuzzSound += "FizzBuzz"
        } else if n % 5 == 0 {
            fizzBuzzSound += "Fizz"
        } else if n % 3 == 0 {
            fizzBuzzSound += "Buzz"
        }
    // End code
    return "\(n)"
}

var fizzBuzzSound = ""

for number in 1...100 {
    if number % 15 == 0 {
        fizzBuzzSound += "FizzBuzz"
    } else if number % 5 == 0 {
        fizzBuzzSound += "Fizz"
    } else if number % 3 == 0 {
        fizzBuzzSound += "Buzz"
    }
}
print(fizzBuzzSound)



func fizzBuzz2(n: Int) -> String {
    // Enter your code between the two comment markers
    if n % 15 == 0 {
        return "FizzBuzz"
    } else if n % 5 == 0 {
        return "Fizz"
    } else if n % 3 == 0 {
        return "Buzz"
    }
    // End code
    return "\(n)"
}

fizzBuzz2(n:45)







