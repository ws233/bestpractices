//
//  WorstButtonActionViewController.swift
//  bestpractices
//
//  Created by Cyril Makankov on 06.02.2023.
//

import UIKit

class WorstButtonActionViewController: UIViewController {
    
    @IBOutlet var button: UIButton!
    
    @IBAction func showPhoto(_ sender: Any) {
        let vc = UIImagePickerController()
        vc.sourceType = .photoLibrary
        present(vc, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        button.addTarget(self,
                         action: #selector(WorstButtonActionViewController.showPhoto(_:)),
                         for: .touchUpInside)
    }

}
