//
//  ProgressHeaderView.swift
//  Today
//
//  Created by Chad Rutherford on 1/22/23.
//

import UIKit

final class ProgressHeaderView: UICollectionReusableView {
    static var elementKind: String { UICollectionView.elementKindSectionHeader }
    
    var progress: CGFloat = 0 {
        didSet {
            setNeedsLayout()
            heightConstraint?.constant = progress * bounds.height
            UIView.animate(withDuration: 0.2) { [weak self] in
                self?.layoutIfNeeded()
            }
        }
    }
    
    private let upperView = UIView(frame: .zero)
    private let lowerView = UIView(frame: .zero)
    private let containerView = UIView(frame: .zero)
    private var heightConstraint: NSLayoutConstraint?
    private var valueFormat: String { NSLocalizedString("%d percent", comment: "Progress percentage value format") }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        prepareSubviews()
        isAccessibilityElement = true
        accessibilityLabel = NSLocalizedString("Progress", comment: "Progress View Accessibility Label")
        accessibilityTraits.update(with: .updatesFrequently)
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented.")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        accessibilityValue = String(format: valueFormat, Int(progress * 100.0))
        heightConstraint?.constant = progress * bounds.height
        containerView.layer.masksToBounds = true
        containerView.layer.cornerRadius = 0.5 * containerView.bounds.width
    }
    
    private func prepareSubviews() {
        containerView.addSubview(upperView)
        containerView.addSubview(lowerView)
        addSubview(containerView)
        
        upperView.translatesAutoresizingMaskIntoConstraints = false
        lowerView.translatesAutoresizingMaskIntoConstraints = false
        containerView.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        NSLayoutConstraint.activate([
            heightAnchor.constraint(equalTo: widthAnchor, multiplier: 1),
            containerView.heightAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 1),
            
            containerView.centerXAnchor.constraint(equalTo: centerXAnchor),
            containerView.centerYAnchor.constraint(equalTo: centerYAnchor),
            
            containerView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.85),
            
            upperView.topAnchor.constraint(equalTo: topAnchor),
            upperView.bottomAnchor.constraint(equalTo: lowerView.topAnchor),
            lowerView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            upperView.leadingAnchor.constraint(equalTo: leadingAnchor),
            upperView.trailingAnchor.constraint(equalTo: trailingAnchor),
            lowerView.leadingAnchor.constraint(equalTo: leadingAnchor),
            lowerView.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
        
        heightConstraint = lowerView.heightAnchor.constraint(equalToConstant: 0)
        heightConstraint?.isActive = true
        
        backgroundColor = .clear
        containerView.backgroundColor = .clear
        upperView.backgroundColor = .todayProgressUpperBackground
        lowerView.backgroundColor = .todayProgressLowerBackground
    }
}
