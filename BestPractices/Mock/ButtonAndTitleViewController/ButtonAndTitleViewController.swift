//
//  ButtonAndTitleViewController.swift
//  bestpractices
//
//  Created by Cyril Makankov on 06.02.2023.
//

import UIKit

class ButtonAndTitleViewController: UIViewController {

    @IBOutlet var button: UIButton!

    var viewModel: ButtonAndTitleViewModel? {
        didSet {
            guard isViewLoaded else { return }
            updateView()
        }
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
    }
}

private extension ButtonAndTitleViewController {
    func updateView() {
        guard let view = view as? ButtonAndTitleView else { return }
        view.viewModel = viewModel
    }
}
