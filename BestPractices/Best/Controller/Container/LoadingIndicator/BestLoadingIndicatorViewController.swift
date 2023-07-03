//
//  BestLoadingIndicatorViewController.swift
//  bestpractices
//
//  Created by Cyril Makankov on 03.07.2023.
//

import UIKit

class BestLoadingIndicatorViewController: UIViewController {
    
    let rootViewController: UIViewController
    let loadingIndicatorViewController: UIViewController
    
    init(rootViewController: UIViewController) {
        self.rootViewController = rootViewController
        loadingIndicatorViewController = UIViewController(nibName: "LoadingIndicatorViewController", bundle: nil)
        
        let nibName = String(describing: BestLoadingIndicatorViewController.self)
        super.init(nibName: nibName, bundle: nil)
        
        add(viewController: rootViewController)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
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

// MARK: - Actions
extension BestLoadingIndicatorViewController {
    @IBAction func startLoading() {
        self.add(viewController: loadingIndicatorViewController)
    }
    
    @IBAction func stopLoading() {
        self.remove(viewController: loadingIndicatorViewController)
    }
}

// MARK: - Private
private extension BestLoadingIndicatorViewController {
    func add(viewController: UIViewController) {
        guard let childView = viewController.view else { return }
        addChild(viewController)
        view.addSubview(childView)
        childView.translatesAutoresizingMaskIntoConstraints = false
        view.addConstraints(constraints(for: childView))
        viewController.didMove(toParent: self)
    }
    
    func remove(viewController: UIViewController) {
        guard let childView = viewController.view else { return }
        viewController.willMove(toParent: nil)
        view.removeConstraints(constraints(for: childView))
        childView.removeFromSuperview()
        viewController.removeFromParent()
    }
    
    func constraints(for childView: UIView) -> [NSLayoutConstraint] {
        [
            view.topAnchor.constraint(equalTo: childView.topAnchor),
            view.bottomAnchor.constraint(equalTo: childView.bottomAnchor),
            view.leadingAnchor.constraint(equalTo: childView.leadingAnchor),
            view.trailingAnchor.constraint(equalTo: childView.trailingAnchor),
        ]
    }
}
