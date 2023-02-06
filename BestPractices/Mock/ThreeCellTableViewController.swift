//
//  ThreeCellTableViewController.swift
//  bestpractices
//
//  Created by Cyril Makankov on 07.02.2023.
//

import UIKit

class ThreeCellTableViewController: UITableViewController { }

// MARK: - Table view data source
extension ThreeCellTableViewController {

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
}
