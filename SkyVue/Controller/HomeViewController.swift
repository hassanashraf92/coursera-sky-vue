//
//  HomeViewController.swift
//  SkyVue
//
//  Created by Hassan on 16/08/2023.
//

import UIKit

class HomeViewController: UIViewController {
    
    // MARK: - Outlets
    
    
    // MARK: - Variables
    
    private var weatherData: [Weather] = []

    
    // MARK: - View Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchDataFromAPI()
    }
    
    
    // MARK: - Simulate API Fetch Data
    
    private func fetchDataFromAPI() {
        if let fileURL = Bundle.main.url(forResource: "WeatherData", withExtension: "json") {
            do {
                // Read the JSON data from the file
                let jsonData = try Data(contentsOf: fileURL)
                
                // Create a JSON decoder
                let decoder = JSONDecoder()
                
                // Decode the JSON data into an array of WeatherData objects
                let weatherArray = try decoder.decode([Weather].self, from: jsonData)
                self.weatherData = weatherArray
            } catch {
                print("Error decoding JSON: \(error)")
            }
        } else {
            print("JSON file not found")
        }
    }

}

