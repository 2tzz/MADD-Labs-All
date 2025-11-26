//
//  WeatherForecastApp.swift
//  WeatherForecast
//
//  Created by IM Student on 2025-10-18.
//

import SwiftUI

@main
struct WeatherForecastApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
