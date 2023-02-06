//
//  ViewModel.swift
//  bestpractices
//
//  Created by Cyril Makankov on 31.01.2023.
//

import Foundation

class CompositeViewModel {
    let title: String
    let subtitle: String
    let innerViewModel: CompositeViewModel?
    
    init(title: String, subtitle: String, innerViewModel: CompositeViewModel? = nil) {
        self.title = title
        self.subtitle = subtitle
        self.innerViewModel = innerViewModel
    }
}

let compositeViewModel: CompositeViewModel? =
CompositeViewModel(title: "First Title",
                   subtitle: "First subtitle",
                   innerViewModel: CompositeViewModel(title: "Second title",
                                                      subtitle: "Second subtitle",
                                                      innerViewModel: nil))
