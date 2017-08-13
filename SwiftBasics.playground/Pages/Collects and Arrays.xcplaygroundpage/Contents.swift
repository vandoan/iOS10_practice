var animals = ["horse", "dog", "cat"]

var words: [String] = ["one", "two", "three"]
var numbers = [1,2,3]

animals.append("pig")

animals + ["frog"]

animals

animals += ["frog"]

animals

animals.insert("cow", at: 1)
animals.remove(at: 3)
animals.count
animals[3]
animals.last




/*
 Dictionaries
 */

// hold option key and hover over dictionary to see infered type
var airportCodes: [String: String] =
[
    "LGA": "La Guardia",
    "LAX": "Las Angelas",
    "TPA": "Tampa",
    "SFO": "San Francisco",
]

airportCodes["TPA"]

// adding new key and value
airportCodes["LGA"] = "La Guardia"
// deleting keys
airportCodes["TPA"] = nil
airportCodes.removeValue(forKey: "SFO")
// airportCodes.remover(at:2)





