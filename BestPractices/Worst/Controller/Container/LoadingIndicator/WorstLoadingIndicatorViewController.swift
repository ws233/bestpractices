//
//  WorstLoadingIndicatorViewController.swift
//  bestpractices
//
//  Created by Cyril Makankov on 03.07.2023.
//

import UIKit

class WorstLoadingIndicatorViewController: UIViewController {
    
    let activityView: UIView = {
        let view = UIView()
        view.backgroundColor = .magenta.withAlphaComponent(0.5)
        let activity = UIActivityIndicatorView(style: .large)
        activity.startAnimating()
        view.addSubview(activity)
        activity.translatesAutoresizingMaskIntoConstraints = false
        view.addConstraints([
            view.centerXAnchor.constraint(equalTo: activity.centerXAnchor),
            view.centerYAnchor.constraint(equalTo: activity.centerYAnchor),
        ])
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(activityView)
        view.addConstraints([
            view.topAnchor.constraint(equalTo: activityView.topAnchor),
            view.bottomAnchor.constraint(equalTo: activityView.bottomAnchor),
            view.leadingAnchor.constraint(equalTo: activityView.leadingAnchor),
            view.trailingAnchor.constraint(equalTo: activityView.trailingAnchor),
        ])
        activityView.translatesAutoresizingMaskIntoConstraints = false
        activityView.isHidden = true
    }

}

// MARK: - Actions
extension WorstLoadingIndicatorViewController {
    @IBAction func startLoading() {
        activityView.isHidden = false
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) { [weak self] in
            self?.stopLoading()
        }
    }
    
    @IBAction func stopLoading() {
        activityView.isHidden = true
    }
}
