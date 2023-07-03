//
//  ButtonAndTitleView.swift
//  bestpractices
//
//  Created by Cyril Makankov on 06.02.2023.
//

import UIKit

class ButtonAndTitleView: UIView {

    var viewModel: ButtonAndTitleViewModel? {
        didSet {
            label.text = viewModel?.explanation
        }
    }
    
    @IBOutlet private var label: UILabel!
    @IBOutlet private var button: PhotoLibraryButton!
}
