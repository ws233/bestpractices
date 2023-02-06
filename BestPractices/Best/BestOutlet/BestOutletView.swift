//
//  BestOutletView.swift
//  bestpractices
//
//  Created by Cyril Makankov on 13.01.2023.
//

import UIKit

class BestOutletView: UIView {
    
    @IBOutlet private var label: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addLabel()
        applyConstraints()
        backgroundColor = .white
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
}

// MARK: - Private
private extension BestOutletView {
    func addLabel() {
        label = UILabel()
        label.numberOfLines = 0
        label.text = "Never implement outlets in controller. Instead implement them in a view!"
        
        addSubview(label)
        applyConstraints()
    }
    
    func applyConstraints() {
        label.translatesAutoresizingMaskIntoConstraints = false
        addConstraints([
            label.topAnchor.constraint(equalTo: topAnchor),
            label.bottomAnchor.constraint(equalTo: bottomAnchor),
            label.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
        ])
    }
}
