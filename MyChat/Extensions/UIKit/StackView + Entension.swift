//
//  StackView + Entension.swift
//  MyChat
//
//  Created by Роман Лабунский on 17/03/2020.
//  Copyright © 2020 Роман Лабунский. All rights reserved.
//

import UIKit

extension UIStackView {
    
    convenience init(arrangedSubviews: [UIView], axis: NSLayoutConstraint.Axis, spacing: CGFloat) {
        self.init(arrangedSubviews: arrangedSubviews)
        self.axis = axis
        self.spacing = spacing
    }
}
