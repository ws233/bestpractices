//
//  BestOutletViewController.swift
//  bestpractices
//
//  Created by Cyril Makankov on 13.01.2023.
//

import UIKit

class BestOutletViewController: UIViewController {
    
    // No Outlets here!!!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        navigationItem.title = "Best Outlet"
    }
    
    override func loadView() {
        view = BestOutletView()
    }

}
