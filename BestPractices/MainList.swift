//
//  MainList.swift
//  bestpractices
//
//  Created by Cyril Makankov on 03.07.2023.
//

import UIKit

let mainSections = [
    Section(title: "Controller", items: [
        Item(title: "Container", action: #selector(UINavigationController.showControllerList))
    ]),
    Section(title: "Model", items: [
    ]),
    Section(title: "View", items: [
        Item(title: "IBOutlet", action: #selector(UINavigationController.showOutlet)),
        Item(title: "View Interface", action: #selector(UINavigationController.showInterface)),
        Item(title: "Button Action", action: #selector(UINavigationController.showButtonAction)),
        Item(title: "Button Cell", action: #selector(UINavigationController.showCellButton)),
        Item(title: "Button Delegate", action: #selector(UINavigationController.showCellDelegate)),
    ]),
]
