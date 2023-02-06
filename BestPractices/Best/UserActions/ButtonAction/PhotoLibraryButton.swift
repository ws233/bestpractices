//
//  PhotoLibraryButton.swift
//  bestpractices
//
//  Created by Cyril Makankov on 07.02.2023.
//

import UIKit

class PhotoLibraryButton: UIButton {

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        addTarget(nil,
                  action: #selector(UINavigationController.showPhoto(_:)),
                  for: .touchUpInside)
        setTitle("Show Photo Library", for: .normal)
        setImage(UIImage.init(systemName: "photo"), for: .normal)
    }
}
