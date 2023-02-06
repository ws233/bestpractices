//
//  BestCellDelegateTableViewController.swift
//  bestpractices
//
//  Created by Cyril Makankov on 07.02.2023.
//

import UIKit

class BestCellDelegateTableViewController: BestCellButtonTableViewController {
    let selector = #selector(UINavigationController.showPhoto(_:))
}

// MARK: - Table view delegate
extension BestCellDelegateTableViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let cell = tableView.cellForRow(at: indexPath) else { return }
        
        let target = cell.target(forAction: selector,
                                 withSender: cell) as? NSObject
        target?.perform(selector, with: cell)
    }
}
