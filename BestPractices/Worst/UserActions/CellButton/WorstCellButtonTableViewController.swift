//
//  WorstCellButtonTableViewController.swift
//  bestpractices
//
//  Created by Cyril Makankov on 07.02.2023.
//

import UIKit

class WorstCellButtonTableViewController: ThreeCellTableViewController {
    // Again copypaste
    @IBAction func showPhoto(_ sender: Any) {
        let vc = UIImagePickerController()
        vc.sourceType = .photoLibrary
        present(vc, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let className = String(describing: WorstButtonTableViewCell.self)
        let nib = UINib(nibName: className, bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: className)
    }
}

// MARK: - Table view data source
extension WorstCellButtonTableViewController {
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WorstButtonTableViewCell", for: indexPath)
        guard let cell = cell as? WorstButtonTableViewCell else { return UITableViewCell() }
        // Configure the cell...
        cell.label.text = "Cell #\(indexPath.row)"
        // set up cell delegate
        cell.delegate = self
        return cell
    }
}

// MARK: - WorstButtonTableViewCellDelegate
extension WorstCellButtonTableViewController: WorstButtonTableViewCellDelegate {
    func didButtonTap(cell: WorstButtonTableViewCell) {
        showPhoto(cell)
    }
}
