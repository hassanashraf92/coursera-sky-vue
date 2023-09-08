//
//  Weather.swift
//  SkyVue
//
//  Created by Hassan on 16/08/2023.
//

import Foundation

// MARK: - Weather Status
enum WeatherStatus: String, Codable {
    case cloudy
    case sunny
    case rainy
    case other
}

// MARK: - Weather Model
struct Weather: Codable {
    let cityName: String
    let countryName: String
    let status: WeatherStatus
    let currentTemp: Int
    let highTemp: Int
    let lowTemp: Int
    let wind: String
    let humidity: String
    let pressure: String
    let weeklyData: [WeatherInWeek]
    let details: String
}

// MARK: - Weather In Week Model
struct WeatherInWeek: Codable {
    let day: String
    let status: WeatherStatus
    let highTemp: Int
    let lowTemp: Int
}

