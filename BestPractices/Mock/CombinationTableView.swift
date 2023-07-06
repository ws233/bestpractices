//
//  CombinationTableView.swift
//  bestpractices
//
//  Created by Cyril Makankov on 04.07.2023.
//

import UIKit

class CombinationTableView: UITableView {
    static let identifier = "identifier"
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        let name = String(describing: TextFieldTableViewCell.self)
        let nib = UINib(nibName: name, bundle: nil)
        register(nib, forCellReuseIdentifier: CombinationTableView.identifier)
    }

}
