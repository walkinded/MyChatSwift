//
//  UIImageView + Extension.swift
//  MyChat
//
//  Created by Роман Лабунский on 17/03/2020.
//  Copyright © 2020 Роман Лабунский. All rights reserved.
//

import Foundation
import UIKit

extension UIImageView {
    
    convenience init(image: UIImage?, contentMode: UIView.ContentMode) {
        self.init()
        
        self.image = image
        self.contentMode = contentMode
    }
}
