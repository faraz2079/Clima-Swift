import UIKit

struct WeatherModel { // this class holds on to our weather data
    let conditionId: Int
    let cityName: String
    let temprature: Double
    let feelsLike: Double
    let minTemp: Double
    let maxTemp: Double
    let humidWeather: Int
    let descrip: String
    
    var tempratureString: String {
        return String(format: "%.0f", temprature)
    }
    
    var conditionName : String {  //computed property
        switch conditionId {
                case 200...232:
                    return "cloud.bolt"
                case 300...321:
                    return "cloud.drizzle"
                case 500...531:
                    return "cloud.rain"
                case 600...622:
                    return "cloud.snow"
                case 701...781:
                    return "cloud.fog"
                case 800:
                    return "sun.max"
                case 801...804:
                    return "cloud.bolt"
                default:
                    return "cloud"
                }
    }
}
