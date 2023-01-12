//
//  ReminderListViewController+Actions.swift
//  Today
//
//  Created by Chad Rutherford on 1/12/23.
//

import UIKit

extension ReminderListViewController {
    @objc func didPressDoneButton(_ sender: ReminderDoneButton) {
        guard let id = sender.id else { return }
        completeReminder(with: id)
    }
}
