//
//  UIViewExt.swift
//  LootFox
//
//  Created by Landon Carr on 7/26/18.
//  Copyright © 2018 Landon Carr. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    // Example use: myView.addBorder(toSide: .Left, withColor: UIColor.redColor().CGColor, andThickness: 1.0)
    
    enum ViewSide {
        case Left, Right, Top, Bottom
    }
    
    func addBorder(toSide side: ViewSide, withColor color: CGColor, andThickness thickness: CGFloat) {
        
        let border = CALayer()
        border.backgroundColor = color
        
        switch side {
        case .Left: border.frame = CGRect(x: frame.minX, y: frame.minY, width: thickness, height: frame.height); break
        case .Right: border.frame = CGRect(x: self.frame.maxX, y: self.frame.minY, width: thickness, height: frame.height); break
        case .Top: border.frame = CGRect(x: self.frame.minX, y: self.frame.minY, width: frame.width, height: thickness); break
        case .Bottom: border.frame = CGRect(x: frame.minX, y: frame.maxY, width: frame.width, height: thickness); break
        }
        
        layer.addSublayer(border)
    }
}
