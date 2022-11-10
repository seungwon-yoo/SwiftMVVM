//
//  UISegmentedControl.swift
//  swiftMVVM
//
//  Created by 유승원 on 2022/11/10.
//  Copyright © 2022 Salmont Dev. All rights reserved.
//

import UIKit
import Combine

extension UISegmentedControl {
    var selectionPublisher: AnyPublisher<Int, Never> {
        controlPublisher(for: .valueChanged)
            .map { $0 as! UISegmentedControl }
            .map { $0.selectedSegmentIndex }
            .eraseToAnyPublisher()
    }
}
