//
//  QuakesProvider.swift
//  Earthquakes
//
//  Created by Chad Rutherford on 1/23/23.
//

import Foundation

@MainActor
final class QuakesProvider: ObservableObject {
    @Published var quakes = [Quake]()
    
    let client: QuakeClient
    
    init(client: QuakeClient = QuakeClient()) {
        self.client = client
    }
    
    func fetchQuakes() async throws {
        let latestQuakes = try await client.quakes
        self.quakes = latestQuakes
    }
    
    func deleteQuakes(atOffsets offsets: IndexSet) {
        quakes.remove(atOffsets: offsets)
    }
    
    func location(for quake: Quake) async throws -> QuakeLocation {
        return try await client.quakeLocation(from: quake.detail)
    }
}
