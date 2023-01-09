//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Chad Rutherford on 1/6/23.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    
    @StateObject private var store = ScrumStore()
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: $store.scrums)
            }
            .onAppear {
                ScrumStore.load { result in
                    switch result {
                    case let .success(scrums):
                        store.scrums = scrums
                    case let .failure(error):
                        fatalError(error.localizedDescription)
                    }
                }
            }
        }
    }
}
