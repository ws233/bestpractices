//
//  BestButtonCellTableView.swift
//  bestpractices
//
//  Created by Cyril Makankov on 07.02.2023.
//

import UIKit

class BestButtonCellTableView: UITableView {
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        registerCells()
    }
    
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        registerCells()
    }

}

private extension BestButtonCellTableView {
    func registerCells() {
        let className = String(describing: BestCellButtonTableViewCell.self)
        let nib = UINib(nibName: className, bundle: nil)
        register(nib, forCellReuseIdentifier: className)
    }
}
