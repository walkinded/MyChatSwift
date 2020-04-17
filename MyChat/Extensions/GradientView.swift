//
//  GradientView.swift
//  MyChat
//
//  Created by Роман Лабунский on 01/04/2020.
//  Copyright © 2020 Роман Лабунский. All rights reserved.
//

import UIKit


class GradientView: UIView {
    
    private let gradientLayer = CAGradientLayer()
    
    // GRADIENT MOTHERFUCKER
    enum Point {
        case topLeading
        case Leading
        case bottomLeading
        case top
        case center
        case buttom
        case topTrailing
        case trailing
        case bottomTrailing
        
        var point: CGPoint {
            switch self {
            case .topLeading:
                return CGPoint(x: 0, y: 0)
            case .Leading:
                return CGPoint(x: 0, y: 0.5)
            case .bottomLeading:
                return CGPoint(x: 0, y: 1.0)
            case .top:
                return CGPoint(x: 0.5, y: 0)
            case .center:
                return CGPoint(x: 0.5, y: 0.5)
            case .buttom:
                return CGPoint(x: 0.5, y: 1.0)
            case .topTrailing:
                return CGPoint(x: 1.0, y: 0)
            case .trailing:
                return CGPoint(x: 1.0, y: 0.5)
            case .bottomTrailing:
                return CGPoint(x: 1.0, y: 1.0)
            }
        }
    }
    
    @IBInspectable private var startColor: UIColor? {
        didSet {
            setupGradientColor(startColor: startColor, endColor: endColor)
        }
    }
    
    @IBInspectable private var endColor: UIColor? {
        didSet {
            setupGradientColor(startColor: startColor, endColor: endColor)
        }
    }
    
    // инициализация для радобы с Storyboard
    init(from: Point, to: Point, startColor: UIColor?, endColor: UIColor?) {
        self.init()
        setupGradient(from: from, to: to, startColor: startColor, endColor: endColor)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        gradientLayer.frame = bounds
    }
    
    // установка позиционирование градиента
    private func setupGradient(from: Point, to: Point, startColor: UIColor?, endColor: UIColor?) {
        self.layer.addSublayer(gradientLayer)
        setupGradientColor(startColor: startColor, endColor: endColor)
        gradientLayer.startPoint = from.point
        gradientLayer.endPoint = to.point
    }
    
    // установка цвета в градиенте
    private func setupGradientColor(startColor: UIColor?, endColor: UIColor?) {
        if let startColor = startColor, let endColor = endColor {
            gradientLayer.colors = [startColor.cgColor, endColor.cgColor]
        }
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupGradient(from: .Leading, to: .trailing, startColor: startColor, endColor: endColor)
    }
}
