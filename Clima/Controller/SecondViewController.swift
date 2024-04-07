import UIKit

class SecondViewController: UIViewController, WeatherManagerDelegate {
    
    var weatherManager = WeatherManager()
    
    @IBOutlet weak var feels: UILabel!
    @IBOutlet weak var min: UILabel!
    @IBOutlet weak var max: UILabel!
    @IBOutlet weak var humid: UILabel!
    @IBOutlet weak var myDes: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        weatherManager.delegate = self
    }
    
    func didUpdateWeather(_ weatherManager: WeatherManager, weather: WeatherModel) {
        DispatchQueue.main.async { //call the main thread
            self.myDes.text = weather.descrip
            self.feels.text = String(weather.feelsLike)
            self.min.text = String(weather.minTemp)
            self.max.text = String(weather.maxTemp)
            self.humid.text = String(weather.humidWeather)
            
        }
    }
    
    func didFailWithError(_ error: Error) {
        print(error)
    }
}
