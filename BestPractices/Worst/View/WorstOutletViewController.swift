//
//  WorstOutletViewController.swift
//  bestpractices
//
//  Created by Cyril Makankov on 13.01.2023.
//

import UIKit

class WorstOutletViewController: UIViewController {
    
    @IBOutlet var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        navigationItem.title = "Worst Outlet"
        
        addSubviews()
        addConstraints()
        view.backgroundColor = .white
    }

}

private extension WorstOutletViewController {
    func addSubviews() {
        label = UILabel()
        label.numberOfLines = 0
        label.text = "Never implement outlets in controller.\nInstead implement them in a view!"
        
        view.addSubview(label)
    }
    
    func addConstraints() {
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addConstraints([
            label.topAnchor.constraint(equalTo: view.topAnchor),
            label.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
        ])
    }
}

