//
//  Quake.swift
//  Earthquakes
//
//  Created by Chad Rutherford on 1/22/23.
//

import Foundation

struct Quake {
    let magnitude: Double
    let place: String
    let time: Date
    let code: String
    let detail: URL
}

extension Quake: Identifiable {
    var id: String { code }
}
