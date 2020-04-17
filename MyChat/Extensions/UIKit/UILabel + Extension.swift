//
//  UILabel + Extension.swift
//  MyChat
//
//  Created by Роман Лабунский on 17/03/2020.
//  Copyright © 2020 Роман Лабунский. All rights reserved.
//

import Foundation
import UIKit

extension UILabel {
    
    convenience init(text: String, font: UIFont? = .avenir20()) {
        self.init()
        
        self.text = text
        self.font = font
    }
}
