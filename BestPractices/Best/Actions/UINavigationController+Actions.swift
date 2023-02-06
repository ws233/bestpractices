//
//  UINavigationController+Actions.swift
//  bestpractices
//
//  Created by Cyril Makankov on 06.02.2023.
//

import UIKit

extension UINavigationController {
    @IBAction func showPhoto(_ sender: Any) {
        let vc = UIImagePickerController()
        vc.sourceType = .photoLibrary
        present(vc, animated: true)
    }
}
