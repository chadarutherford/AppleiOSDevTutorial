//
//  QuakeError.swift
//  Earthquakes
//
//  Created by Chad Rutherford on 1/22/23.
//

import Foundation

enum QuakeError: Error {
    case missingData
    case networkError
    case unexpectedError(error: Error)
}

extension QuakeError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .missingData:
            return NSLocalizedString(
                "Found and Will Discard a Quake Missing a Valid Code, Magnitude, Place, or Time.",
                comment: ""
            )
        case .networkError:
            return NSLocalizedString("Error Fetching Quake Data Over the Network.", comment: "")
        case let .unexpectedError(error):
            return NSLocalizedString("Received Unexpected Error. \(error.localizedDescription)", comment: "")
        }
    }
}
