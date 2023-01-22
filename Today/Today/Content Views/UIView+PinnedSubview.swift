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
        subview.topAnchor.constraint(equalTo: topAnchor, constant: insets.top).isActive = true
        subview.leadingAnchor.constraint(equalTo: leadingAnchor, constant: insets.left).isActive = true
        trailingAnchor.constraint(equalTo: subview.trailingAnchor, constant: insets.right).isActive = true
        bottomAnchor.constraint(equalTo: subview.bottomAnchor, constant: insets.bottom).isActive = true
        
        if let height = height {
            subview.heightAnchor.constraint(equalToConstant: height).isActive = true
        }
    }
}
