//
//  CombinationTableViewDataSource.swift
//  bestpractices
//
//  Created by Cyril Makankov on 04.07.2023.
//

import UIKit

// MARK: - UITableViewDataSource
class CombinationTableViewDataSource: NSObject, UITableViewDataSource {
    
    var identifier: String { CombinationTableView.identifier }

    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        35
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as? TextFieldTableViewCell else {
            return UITableViewCell(style: .default, reuseIdentifier: nil)
        }
        cell.textField.text = "Row #\(indexPath.row)"
        return cell
    }
}
