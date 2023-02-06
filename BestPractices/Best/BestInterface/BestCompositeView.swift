//
//  WorstCompositeView.swift
//  bestpractices
//
//  Created by Cyril Makankov on 18.01.2023.
//

import UIKit

class BestCompositeView: UIView {
    
    @IBOutlet private var label: UILabel!
    @IBOutlet private var textField: UITextField!
    @IBOutlet private var compositeSubview: BestCompositeView?

    // That's only the public interface. All in one.
    var viewModel: CompositeViewModel? {
        set {
            updateView(viewModel: newValue)
        }
        get {
            CompositeViewModel(title: label.text ?? "",
                               subtitle: textField.text ?? "",
                               innerViewModel: compositeSubview?.viewModel)
        }
    }
}

private extension BestCompositeView {
    func updateView(viewModel: CompositeViewModel?) {
        label.text = viewModel?.title
        textField.text = viewModel?.subtitle
        
        // No access to composite subviews besides its public interface
        compositeSubview?.viewModel = compositeViewModel?.innerViewModel
    }
}
