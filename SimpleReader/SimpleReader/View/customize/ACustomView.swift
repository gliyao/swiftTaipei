//
//  ACustomView.swift
//  SimpleReader
//
//  Created by Liyao on 2014/10/16.
//  Copyright (c) 2014年 HaveFun. All rights reserved.
//

import UIKit

@IBDesignable
class ACustomView: UIView {

    @IBInspectable var color: UIColor = UIColor.clearColor() {
        didSet{
            updateUI()
        }
    }
    
    func updateUI()
    {
        self.backgroundColor = color;
    }
    
    override func prepareForInterfaceBuilder() {
        
    }
    
    override func drawRect(rect: CGRect)
    {
        //// Star Drawing
        var starPath = UIBezierPath()
        starPath.moveToPoint(CGPointMake(131.25, 33.5))
        starPath.addLineToPoint(CGPointMake(137.86, 42.63))
        starPath.addLineToPoint(CGPointMake(149.08, 45.76))
        starPath.addLineToPoint(CGPointMake(141.95, 54.54))
        starPath.addLineToPoint(CGPointMake(142.27, 65.61))
        starPath.addLineToPoint(CGPointMake(131.25, 61.9))
        starPath.addLineToPoint(CGPointMake(120.23, 65.61))
        starPath.addLineToPoint(CGPointMake(120.55, 54.54))
        starPath.addLineToPoint(CGPointMake(113.42, 45.76))
        starPath.addLineToPoint(CGPointMake(124.64, 42.63))
        starPath.closePath()
        UIColor.grayColor().setFill()
        starPath.fill()
        
        
        
        //// Bezier Drawing
        var bezierPath = UIBezierPath()
        bezierPath.moveToPoint(CGPointMake(150, 51))
        bezierPath.addCurveToPoint(CGPointMake(115, 85), controlPoint1: CGPointMake(170, 74), controlPoint2: CGPointMake(115, 85))
        bezierPath.addLineToPoint(CGPointMake(84, 55))
        UIColor.grayColor().setFill()
        bezierPath.fill()
        
    }
}
