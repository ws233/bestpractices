//
//  WorstInterfaceViewController.swift
//  bestpractices
//
//  Created by Cyril Makankov on 18.01.2023.
//

import UIKit

class WorstInterfaceViewController: UIViewController {

    @IBOutlet weak var firstCompositeView: WorstCompositeView!
    @IBOutlet weak var secondCompositeView: WorstCompositeView!
    
    @IBAction func buttonTapped(_ sender: Any) {
        // read data
        print("textField 1: \(firstCompositeView.textField.text ?? "empty")")
        print("textField 2: \(secondCompositeView.textField.text ?? "empty")")

        // set data
        firstCompositeView.label.text = compositeViewModel?.title
        firstCompositeView.textField.text = compositeViewModel?.subtitle
        
        secondCompositeView.label.text = compositeViewModel?.innerViewModel?.title
        secondCompositeView.textField.text = compositeViewModel?.innerViewModel?.subtitle
    }

}
