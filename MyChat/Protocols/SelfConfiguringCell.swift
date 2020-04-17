//
//  SelfConfiguringCell.swift
//  MyChat
//
//  Created by Роман Лабунский on 09/04/2020.
//  Copyright © 2020 Роман Лабунский. All rights reserved.
//

import Foundation

protocol SelfConfiguringCell {
    static var resumeId: String { get }
    func configure(with value: MChat)
}
