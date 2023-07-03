//
//  UINavigationController+Actions.swift
//  bestpractices
//
//  Created by Cyril Makankov on 13.01.2023.
//

import UIKit

extension UINavigationController {
    @IBAction func showOutlet() {
        let controller = isBest ? BestOutletViewController() : WorstOutletViewController()
        pushViewController(controller, animated: true)
    }
    
    @IBAction func showInterface() {
        let controller = isBest ? BestInterfaceViewController() : WorstInterfaceViewController()
        pushViewController(controller, animated: true)
    }
    
    @IBAction func showButtonAction() {
        var controller: UIViewController
        if isBest {
            let bestController = BestButtonActionViewController(nibName: "ButtonAndTitleViewController",
                                                                bundle: nil)
            bestController.viewModel = ButtonAndTitleViewModel(explanation: "Don't couple the button action with the controller.\nCouple with the first responder instead.")
            controller = bestController
        } else {
            controller = WorstButtonActionViewController()
        }
        pushViewController(controller, animated: true)
    }
    
    @IBAction func showCellButton() {
        let controller = isBest ? BestCellButtonTableViewController() : WorstCellButtonTableViewController()
        pushViewController(controller, animated: true)
    }
    
    @IBAction func showCellDelegate() {
        let controller = isBest ? BestCellDelegateTableViewController() : WorstCellDelegateTableViewController()
        pushViewController(controller, animated: true)
    }
    
    @IBAction func showControllerList() {
        let identifier = String(describing: ListViewController.self)
        guard let controller = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: identifier) as? ListViewController else {
            return
        }
        controller.dataSource = controllerList
        pushViewController(controller, animated: true)
    }
    
    @IBAction func showLoadingIndicator() {
        let nibName = "MockLoadingViewController"
        var controller: UIViewController? = nil
        if isBest {
            let childViewController = LoadingContentViewController(nibName:nibName, bundle: nil)
            let loadingController = BestLoadingIndicatorViewController(rootViewController: childViewController)
            controller = loadingController
        } else {
            controller = WorstLoadingIndicatorViewController(nibName: nibName, bundle: nil)
        }
        pushViewController(controller!, animated: true)
    }
    
}

// MARK: - Private
private extension UINavigationController {
    var isBest: Bool { tabBarController?.selectedIndex == 1 }
}
