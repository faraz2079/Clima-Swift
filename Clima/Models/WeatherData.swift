import UIKit

struct WeatherData: Codable {
    
    let name: String
    let main: Main
    let weather: [Weather] // in the JSON file, it was an array of weather
}

struct Main: Codable {
    let temp: Double
    let feels_like: Double
    let temp_min: Double
    let temp_max: Double
    let humidity: Int
}

struct Weather: Codable {
    let id: Int
    let description: String
}

 


