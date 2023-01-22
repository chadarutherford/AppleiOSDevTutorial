//
//  UIView+PinnedSubview.swift
//  Today
//
//  Created by Chad Rutherford on 1/21/23.
//

import UIKit

extension UIView {
    func addPinnedSubview(_ subview: UIView, height: CGFloat? = nil, insets: UIEdgeInsets = UIEdgeInsets(top: 0, left: 8, bottom: 0, right: 8)) {
        addSubview(subview)
        subview.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            subview.topAnchor.constraint(equalTo: topAnchor, constant: insets.top),
            subview.leadingAnchor.constraint(equalTo: leadingAnchor, constant: insets.left),
            trailingAnchor.constraint(equalTo: subview.trailingAnchor, constant: insets.right),
            bottomAnchor.constraint(equalTo: subview.bottomAnchor, constant: insets.bottom)
        ])
        
        if let height = height {
            NSLayoutConstraint.activate([subview.heightAnchor.constraint(equalToConstant: height)])
        }
    }
}
