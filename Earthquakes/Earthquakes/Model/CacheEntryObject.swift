//
//  CacheEntryObject.swift
//  Earthquakes
//
//  Created by Chad Rutherford on 1/23/23.
//

import Foundation

enum CacheEntry {
    case inProgress(Task<QuakeLocation, Error>)
    case ready(QuakeLocation)
}

final class CacheEntryObject {
    let entry: CacheEntry
    init(entry: CacheEntry) { self.entry = entry }
}
