//
//  WorstButtonTableViewCell.swift
//  bestpractices
//
//  Created by Cyril Makankov on 07.02.2023.
//

import UIKit

class WorstButtonTableViewCell: UITableViewCell {
    
    @IBOutlet var button: UIButton!
    @IBOutlet var label: UILabel!
    
    var delegate: WorstButtonTableViewCellDelegate?
    
    @IBAction func buttonTapped(_ sender: Any) {
        delegate?.didButtonTap(cell: self)
    }
    
}
