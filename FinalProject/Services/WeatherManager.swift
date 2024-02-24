//
//  WeatherService.swift
//  FinalProject
//
//  Created by Saurav Modi on 2/23/24.
//

import WeatherKit
import CoreLocation

class WeatherManager{
    
    private let service = WeatherService()
    
    func getWeather(location:CLLocation) {
        Task{
            do{
                let weather = try await service.weather(for: location)
                print(weather.currentWeather)
                print(weather.dailyForecast)
            } catch {
                print(String(describing: error))
            }
        }
    }
    
}
