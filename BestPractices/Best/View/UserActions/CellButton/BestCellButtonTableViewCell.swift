//
//  BestCellButtonTableViewCell.swift
//  bestpractices
//
//  Created by Cyril Makankov on 07.02.2023.
//

import UIKit

class BestCellButtonTableViewCell: UITableViewCell {
    
    @IBOutlet private var label: UILabel!
    
    var viewModel: String? {
        didSet {
            label.text = viewModel
        }
    }
}
