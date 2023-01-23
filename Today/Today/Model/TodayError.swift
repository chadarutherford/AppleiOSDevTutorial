//
//  TodayError.swift
//  Today
//
//  Created by Chad Rutherford on 1/22/23.
//

import Foundation

enum TodayError: LocalizedError {
    case accessDenied
    case accessRestricted
    case failedReadingReminders
    case reminderHasNoDueDate
    case unknown
    
    var errorDescription: String? {
        switch self {
        case .accessDenied:
            return NSLocalizedString("The App Doesn't Have Permission to Read Reminders", comment: "Access Denied Error Description")
        case .accessRestricted:
            return NSLocalizedString("This Device Doesn't Allow Access to Reminders.", comment: "Access Restricted Error Description")
        case .failedReadingReminders:
            return NSLocalizedString("Failed to Read Reminders", comment: "Failed Reading Reminders Error Description")
        case .reminderHasNoDueDate:
            return NSLocalizedString("A Reminder has no Due Date", comment: "Reminder Has No Due Date Error Description")
        case .unknown:
            return NSLocalizedString("An Unknown Error Occurred.", comment: "Unknown Error Description")
        }
    }
}
