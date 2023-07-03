//
//  BestInterfaceViewController.swift
//  bestpractices
//
//  Created by Cyril Makankov on 31.01.2023.
//

import UIKit

class BestInterfaceViewController: UIViewController {
    
    @IBOutlet var compositeView: BestCompositeView!

    @IBAction func buttonTapped(_ sender: Any) {
        // read data
        print("textfield 1: \(compositeView.viewModel?.subtitle ?? "empty")")
        print("textfield 2: \(compositeView.viewModel?.innerViewModel?.subtitle ?? "empty")")
        
        // set data
        compositeView.viewModel = compositeViewModel
    }
}
