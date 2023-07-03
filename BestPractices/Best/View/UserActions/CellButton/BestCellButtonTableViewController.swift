//
//  BestCellButtonTableViewController.swift
//  bestpractices
//
//  Created by Cyril Makankov on 07.02.2023.
//

import UIKit

class BestCellButtonTableViewController: ThreeCellTableViewController {
    override func loadView() {
        tableView = BestButtonCellTableView()
    }
}

// MARK: - Table view data source
extension BestCellButtonTableViewController {

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BestCellButtonTableViewCell", for: indexPath)
        guard let cell = cell as? BestCellButtonTableViewCell else { return UITableViewCell() }
        // Configure the cell...
        cell.viewModel = "Cell #\(indexPath.row)"
        return cell
    }

}
