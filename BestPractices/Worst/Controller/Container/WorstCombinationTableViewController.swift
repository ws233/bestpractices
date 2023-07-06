//
//  WorstCombinationTableViewController.swift
//  bestpractices
//
//  Created by Cyril Makankov on 04.07.2023.
//

import UIKit

class WorstCombinationTableViewController: UIViewController {
    
    let dataSource = CombinationTableViewDataSource()
    var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView = UITableView(frame: .zero, style: .plain)
        let nibName = String(describing: TextFieldTableViewCell.self)
        let nib = UINib(nibName: nibName, bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: dataSource.identifier)
        tableView.dataSource = dataSource
        view.addSubview(tableView)
        
        let button = UIButton(frame: .zero)
        button.setTitle("Some Action", for: .normal)
        button.setImage(.strokedCheckmark, for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(.systemBlue, for: .normal)
        view.addSubview(button)
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        button.translatesAutoresizingMaskIntoConstraints = false
        
        view.addConstraints([
            view.topAnchor.constraint(equalTo: tableView.topAnchor),
            view.leadingAnchor.constraint(equalTo: tableView.leadingAnchor),
            view.trailingAnchor.constraint(equalTo: tableView.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: button.topAnchor),
            button.heightAnchor.constraint(equalToConstant: 44),
            view.leadingAnchor.constraint(equalTo: button.leadingAnchor),
            view.trailingAnchor.constraint(equalTo: button.trailingAnchor),
            view.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: button.bottomAnchor),
        ])
    }

}
