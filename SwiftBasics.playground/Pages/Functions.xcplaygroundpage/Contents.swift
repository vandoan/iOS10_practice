

let length  = 20
let width   = 13

func area(length: Int, width: Int) -> Int {
    let lw = length * width
    return lw
}

area(length:14, width:4)



// convert to celcius

func temperatureInFahrenheit(temperature: Double) -> Double {
    let celcius = ((temperature * 9) / 5) + 32
    return celcius
}

let newTemp = temperatureInFahrenheit(temperature: 24.0)





func getRemainder(value a: Int, divisor b: Int) -> Int {
    return a % b
}

let result = getRemainder(value: 10, divisor: 3)




func carpetCostHaving( length: Int, width: Int, carpetColor color: String = "tan") -> (cost: Int, color: String){
    
    let areaOfRoom = area(length: length, width: width)
    var price = 0
    
    switch color {
        case "gray":    price = areaOfRoom * 1
        case "tan":     price = areaOfRoom * 2
        case "blue":    price = areaOfRoom * 1
        default:            price = 0
    }
    
    return(price, color)
}

let firstRoom = carpetCostHaving(length: 3, width: 10)
firstRoom.color



// TEST

func coordinates( for location: String) -> (Double,Double){
    var long = 0.0
    var lat = 0.0
    
    switch location {
    case "Eiffel Tower":    (long = 48.8582, lat = 2.2945)
    case "Great Pyramid":   (long = 29.9792, lat = 31.1344)
    case "Sydney Opera House":  (long = 33.8587, lat = 151.2140)
    default: (long = 0.0, lat = 0.0)
    }
        return (long, lat)
}
coordinates(for: "Eiffel Tower")
