//
//  EarthquakesApp.swift
//  Earthquakes
//
//  Created by Chad Rutherford on 1/22/23.
//

import SwiftUI

@main
struct EarthquakesApp: App {
    @StateObject var quakesProvider = QuakesProvider()
    
    var body: some Scene {
        WindowGroup {
            Quakes()
                .environmentObject(quakesProvider)
        }
    }
}
