//
//  LoadingContentViewController+Actions.swift
//  bestpractices
//
//  Created by Cyril Makankov on 03.07.2023.
//

import UIKit

class LoadingContentViewController: UIViewController {
    
}

// MARK: - Actions
extension LoadingContentViewController {
    
    @IBAction func loadData() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) { [weak self] in
            let selector = #selector(BestLoadingIndicatorViewController.stopLoading)
            guard let target = self?.target(forAction: selector, withSender: self) as? UIResponder else {
                return
            }
            target.perform(selector)
        }
    }
    
}
