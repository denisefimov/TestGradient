//
//  RadialGradientView.swift
//  TestGradient
//
//  Created by Denis Efimov on 11/21/18.
//  Copyright © 2018 Denis Efimov. All rights reserved.
//

import UIKit

@IBDesignable
class RadialGradientView: UIView {
    
    @IBInspectable var insideColor: UIColor = UIColor.black
    @IBInspectable var outsideColor: UIColor = UIColor.green
    
    override func draw(_ rect: CGRect) {
        
        let colors: [CGColor] = [insideColor.cgColor, outsideColor.cgColor]
        let endRadius = min(frame.width, frame.height) / 2.0
        let center = CGPoint(x: bounds.size.width / 2, y: bounds.size.height / 2)
        let gradient = CGGradient(colorsSpace: nil, colors: colors as CFArray, locations: nil)!
        let context = UIGraphicsGetCurrentContext()!
        
        context.drawRadialGradient(gradient, startCenter: center, startRadius: 0.0, endCenter: center, endRadius: endRadius, options: .drawsBeforeStartLocation)
        
    }
}

@IBDesignable
class RadialGradientBackgroundView: UIView {
    
    @IBInspectable var gradientCenter: CGPoint = .zero
    @IBInspectable var radius: CGFloat = 0
    var colors: [CGColor] = [UIColor.green.cgColor, UIColor.red.cgColor]
    
    func addGradient(gradientCenter: CGPoint, radius: CGFloat, colors: [UIColor]) {
        self.gradientCenter = gradientCenter
        self.radius = radius
        self.colors = colors.map { $0.cgColor }
    }
    
    override func draw(_ rect: CGRect) {
        
        let colors = self.colors as CFArray
        
        guard
            let gradient = CGGradient(colorsSpace: nil, colors: colors, locations: nil),
            let context = UIGraphicsGetCurrentContext()else {
                return
        }
        
        context.drawRadialGradient(gradient,
                                   startCenter: gradientCenter,
                                   startRadius: 10,
                                   endCenter: gradientCenter,
                                   endRadius: radius,
                                   options: .drawsAfterEndLocation)
        
        layer.transform = CATransform3DMakeScale(1.5, 1.0, 1.0)
    }
}
