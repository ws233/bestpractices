//
//  ListViewController.swift
//  bestpractices
//
//  Created by Cyril Makankov on 13.01.2023.
//

import UIKit

struct Item {
    let title: String
    let action: Selector
}

struct Section {
    let title: String
    let items: [Item]
}

class ListViewController: UITableViewController {
    
    let dataSource = [
        Section(title: "View", items: [
            Item(title: "IBOutlet", action: #selector(UINavigationController.showOutlet)),
            Item(title: "View Interface", action: #selector(UINavigationController.showInterface)),
            Item(title: "Button Action", action: #selector(UINavigationController.showButtonAction)),
            Item(title: "Button Cell", action: #selector(UINavigationController.showCellButton)),
            Item(title: "Button Delegate", action: #selector(UINavigationController.showCellDelegate)),
        ]),
        Section(title: "Model", items: [
        ]),
        Section(title: "Controller", items: [
        ])
    ]

    override func numberOfSections(in tableView: UITableView) -> Int {
        dataSource.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        dataSource[section].items.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        dataSource[section].title
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListCell", for: indexPath)
        cell.textLabel?.text = dataSource[indexPath.section].items[indexPath.row].title
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selector = dataSource[indexPath.section].items[indexPath.row].action
        let cell = tableView.cellForRow(at: indexPath)
        let target = tableView.target(forAction: selector, withSender: cell) as? NSObject
        target?.perform(selector, with: cell)
    }
        
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
}
