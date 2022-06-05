//
//  Weather.swift
//  TourKC
//
//  Created by Nathan Bronson on 6/4/22.
//

import Foundation

class WeatherService {
    static let shared = WeatherService()
    
    let STEM: String = "https://api.openweathermap.org/data/2.5/weather?"
    let API_KEY: String = WEATHER_API_KEY
    var items: WResult? = nil
    
    let session = URLSession(configuration: .default)
    
    func buildURL() -> String {
        return STEM + "q=Kansas%20City&units=imperial&appid=" + API_KEY
    }
    
    func getWeather(finished: @escaping (_ items: WResult) -> Void) -> Void {
        print(buildURL())
        let sem = DispatchSemaphore.init(value: 0)
        guard let url = URL(string: buildURL()) else {
            print("error")
            return
        }
        let task = session.dataTask(with: url) { (data, response, error) in
            defer { sem.signal() }
            if let error = error {
                print("itemsERROR")
                print(error.localizedDescription)
                return
            }
            guard let data = data, let response = response as? HTTPURLResponse else {
                print("itemsInvalid data or response")
                return
            }
            
            do {
                if response.statusCode == 200 {
                    let items = try JSONDecoder().decode(WResult.self, from: data)
                    finished(items)
                    return
                } else {
                    print("itemsResponse wasn't 200. It was: " + "\n\(response.statusCode)")
                }
            } catch {
                print("itemsCATCH")
                print(error)
                print(error.localizedDescription)
            }
        }
        task.resume()
        sem.wait()
        return
    }
    
}
