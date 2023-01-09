//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Chad Rutherford on 1/6/23.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    
    @State private var scrums = DailyScrum.sampleData
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: $scrums)
            }
        }
    }
}
