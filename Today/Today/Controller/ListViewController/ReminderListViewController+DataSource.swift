//
//  ReminderListViewController+DataSource.swift
//  Today
//
//  Created by Chad Rutherford on 1/12/23.
//

import UIKit

extension ReminderListViewController {
    typealias DataSource = UICollectionViewDiffableDataSource<Section, String>
    typealias Snapshot = NSDiffableDataSourceSnapshot<Section, String>
    
    func cellRegistrationHandler(cell: UICollectionViewListCell, indexPath: IndexPath, id: String) {
        let reminder = Reminder.sampleData[indexPath.item]
        var contentConfiguration = cell.defaultContentConfiguration()
        contentConfiguration.text = reminder.title
        contentConfiguration.secondaryText = reminder.dueDate.dayAndTimeText
        contentConfiguration.secondaryTextProperties.font = UIFont.preferredFont(forTextStyle: .caption1)
        cell.contentConfiguration = contentConfiguration
    }
}
