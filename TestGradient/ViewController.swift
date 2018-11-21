//
//  ViewController.swift
//  TestGradient
//
//  Created by Denis Efimov on 11/21/18.
//  Copyright © 2018 Denis Efimov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
 //       addView(withRadius: 400)
//        addView(withRadius: 300)
//        addView(withRadius: 200)
//
//        let frame3 = CGRect(origin: view.center, size: CGSize.init(width: 100, height: 100))
//        let newView3 = UIView(frame: frame3)
//        self.view.addSubview(newView3)
//        newView3.center = view.center
//        newView3.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
//        newView3.layer.cornerRadius = 50
//        newView3.clipsToBounds = true
//        newView3.backgroundColor = UIColor(red: 0.01, green: 0.66, blue: 0.95, alpha: 0.5)
        
        
    }
    
//    func addView(withRadius: Int) {
//
//        let frame = CGRect(origin: view.center, size: CGSize.init(width: withRadius, height: withRadius))
//        let newView = RadialGradientView(frame: frame)
//        self.view.addSubview(newView)
//        newView.center = view.center
//        newView.gradientCenter = view.center
//        newView.radius = CGFloat(withRadius)
//
//        newView.colors = [UIColor(red: 1, green: 1, blue: 1, alpha: 0).cgColor,
//                                 UIColor(red: 0, green: 1, blue: 1, alpha: 0.0).cgColor,
//                                 UIColor(red: 0, green: 0, blue: 0.5, alpha: 0.0).cgColor,
//                                 UIColor(red: 0, green: 0, blue: 1, alpha: 0.08).cgColor]
//
//        newView.layer.cornerRadius = CGFloat(withRadius) / 2.0
//        newView.clipsToBounds = true
//        //newView.backgroundColor = UIColor(red: 0.01, green: 0.66, blue: 0.95, alpha: 0.5)
//
//    }
    
    
}


//class RadialGradientLayer: CALayer {
//
//    var center: CGPoint {
//        return CGPoint(x: bounds.width/2, y: bounds.height/2)
//    }
//
//    var radius: CGFloat {
//        return (bounds.width + bounds.height)/2
//    }
//
//    var colors: [UIColor] = [UIColor(red: 1, green: 1, blue: 1, alpha: 0),
//                             UIColor(red: 0, green: 1, blue: 1, alpha: 0.0),
//                             UIColor(red: 0, green: 0, blue: 0.5, alpha: 0.0),
//                             UIColor(red: 0, green: 0, blue: 1, alpha: 0.08)] {
//        didSet {
//            setNeedsDisplay()
//        }
//    }
//
//    var cgColors: [CGColor] {
//        return colors.map({ (color) -> CGColor in
//            return color.cgColor
//        })
//    }
//
//    override init() {
//        super.init()
//        needsDisplayOnBoundsChange = true
//    }
//
//    required init(coder aDecoder: NSCoder) {
//        super.init()
//    }
//
//    override func draw(in ctx: CGContext) {
//        ctx.saveGState()
//
//        let colorSpace = CGColorSpaceCreateDeviceRGB()
//        let locations: [CGFloat] = [0.0, 0.2, 0.68, 1.0]
//        guard let gradient = CGGradient(colorsSpace: colorSpace, colors: cgColors as CFArray, locations: locations) else {
//            return
//        }
//
//        ctx.drawRadialGradient(gradient, startCenter: center, startRadius: 0.0, endCenter: center, endRadius: radius, options: CGGradientDrawingOptions(rawValue: 0))
//    }
//
//}
//
////    override func layoutSubviews() {
////        super.layoutSubviews()
////
////        if gradientLayer.superlayer == nil {
////            layer.insertSublayer(gradientLayer, at: 0)
////        }
////        gradientLayer.frame = bounds
// //   }
//
//}

//class RadialGradientView: UIView {
//    
//    var gradientCenter: CGPoint = .zero
//    var radius: CGFloat = 0
//    var colors: [CGColor] = []
//    let locations: [CGFloat] = [0.0, 0.2, 0.68, 1.0]
//    
//    func addGradient(gradientCenter: CGPoint, radius: CGFloat, colors: [UIColor]) {
//        self.gradientCenter = gradientCenter
//        self.radius = radius
//        self.colors = colors.map { $0.cgColor }
//    }
//    
//    override func draw(_ rect: CGRect) {
//        
//        let colors = self.colors as CFArray
//        
//        guard
//            let gradient = CGGradient(colorsSpace: nil, colors: colors, locations: locations),
//            let context = UIGraphicsGetCurrentContext() else {
//                return
//        }
//        
//        context.drawRadialGradient(gradient,
//                                   startCenter: gradientCenter,
//                                   startRadius: radius,
//                                   endCenter: gradientCenter,
//                                   endRadius: UIScreen.main.bounds.height,
//                                   options: .drawsBeforeStartLocation)
//    }
//}


//class RadialGradientView: UIView {
//
//    private let gradientLayer = RadialGradientLayer()
//
//    var colors: [UIColor] {
//        get {
//            return gradientLayer.colors
//        }
//        set {
//            gradientLayer.colors = newValue
//        }
//    }
//
//    override func layoutSubviews() {
//        super.layoutSubviews()
//        if gradientLayer.superlayer == nil {
//            layer.insertSublayer(gradientLayer, at: 0)
//        }
//        gradientLayer.frame = bounds
//    }
//
//}
//class RadialGradientLayer: CALayer {
//
//    override init(){
//
//        super.init()
//
//        needsDisplayOnBoundsChange = true
//    }
//
//    init(center:CGPoint,radius:CGFloat,colors:[CGColor]){
//
//        self.center = center
//        self.radius = radius
//        self.colors = colors
//
//        super.init()
//
//    }
//
//    required init(coder aDecoder: NSCoder) {
//
//        super.init()
//
//    }
//
//    var center: CGPoint = CGPoint(x: 50, y: 50)
//    var radius: CGFloat = 20
//    var colors:[CGColor] = [UIColor(red: 251/255, green: 237/255, blue: 33/255, alpha: 1.0).cgColor , UIColor(red: 251/255, green: 179/255, blue: 108/255, alpha: 1.0).cgColor]
//
//    override func draw(in ctx: CGContext) {
//
//        ctx.saveGState()
//
//        let colorSpace = CGColorSpaceCreateDeviceRGB()
//
//        let locations:[CGFloat] = [0.0, 1.0]
//
//        let gradient = CGGradient(colorsSpace: colorSpace, colors: colors as CFArray, locations: locations)
//
////        let startPoint = CGPoint(x: 0, y: self.bounds.height)
////        let endPoint = CGPoint(x: self.bounds.width, y: self.bounds.height)
//
//        ctx.drawRadialGradient(gradient!, startCenter: center, startRadius: 0.0, endCenter: center, endRadius: radius, options: [])
//
//    }

//}
