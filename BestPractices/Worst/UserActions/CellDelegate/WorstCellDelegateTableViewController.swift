//
//  WorstCellDelegateTableViewController.swift
//  bestpractices
//
//  Created by Cyril Makankov on 07.02.2023.
//

import UIKit

class WorstCellDelegateTableViewController: WorstCellButtonTableViewController { }

// MARK: - Table view delegate
extension WorstCellDelegateTableViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let cell = tableView.cellForRow(at: indexPath) else { return }
        showPhoto(cell)
    }
}
