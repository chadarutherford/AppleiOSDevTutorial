//
//  QuakeError.swift
//  Earthquakes
//
//  Created by Chad Rutherford on 1/22/23.
//

import Foundation

enum QuakeError: Error {
    case missingData
}

extension QuakeError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .missingData:
            return NSLocalizedString(
                "Found and Will Discard a Quake Missing a Valid Code, Magnitude, Place, or Time.",
                comment: ""
            )
        }
    }
}
