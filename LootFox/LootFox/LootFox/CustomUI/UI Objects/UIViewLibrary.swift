//
//  UIViewLibrary.swift
//  LootFox
//
//  Created by Landon Carr on 7/22/18.
//  Copyright © 2018 Landon Carr. All rights reserved.
//




import Foundation
import UIKit
import GTProgressBar
// NavigationBar
//TopRoundedView
//progressBarView
@IBDesignable
class NavigationBar: UIView {
    
    override func awakeFromNib() {
        
        let border = CALayer()
        let width = CGFloat(0.0)
        // border.borderColor = Color Liter
        
        //self.layer.cornerRadius = 10.0
        //
        border.frame = CGRect(x: 0, y: self.frame.size.height - width, width:  self.frame.size.width, height: self.frame.size.height)
        border.borderWidth = width
        
        self.layer.cornerRadius = 10.0
        self.layer.addSublayer(border)
        self.layer.masksToBounds = true
        
        
        
        
        
        
    }
}




@IBDesignable
class TopRoundedView: UIView {
    
    override func awakeFromNib() {
        
        self.clipsToBounds = true
        self.layer.cornerRadius = 15
        self.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner,.layerMinXMaxYCorner,.layerMaxXMaxYCorner]
        
        
        
        
    }
}


@IBDesignable

class progressBarView: UIView {
    
    override func awakeFromNib() {
        
        let progressBar = GTProgressBar(frame: CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height))
        progressBar.progress = 0.75
        progressBar.barBorderColor = #colorLiteral(red: 0.5098039216, green: 0.3843137255, blue: 1, alpha: 1)
        progressBar.barFillColor = #colorLiteral(red: 0.5098039216, green: 0.3843137255, blue: 1, alpha: 1)
        progressBar.barBackgroundColor = #colorLiteral(red: 0.5098039216, green: 0.3843137255, blue: 1, alpha: 0.6157159675)
        progressBar.barBorderWidth = 0.0
        progressBar.barFillInset = 0.0
        progressBar.displayLabel = false
        progressBar.labelTextColor = UIColor(red:0.35, green:0.80, blue:0.36, alpha:1.0)
        progressBar.progressLabelInsets = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)
        progressBar.font = UIFont.boldSystemFont(ofSize: 18)
        progressBar.labelPosition = GTProgressBarLabelPosition.right
        progressBar.barMaxHeight = 20
        progressBar.cornerRadius = progressBar.barMaxHeight! / 2
        progressBar.direction = GTProgressBarDirection.anticlockwise
        
        self.addSubview(progressBar)
    }
    
    
}




class LocatonAdvertView: UIView {
    
    override func awakeFromNib() {
        // self.layer.shadowOpacity = 0.75
        //self.layer.shadowRadius = 5
        //  self.layer.shadowColor = UIColor.black.cgColor
        self.layer.cornerRadius = 15.0
        // layer.shadowRadius = 30
        super.awakeFromNib()
    }
    
}


class ShadowView: UIView {
    
    
    
    //
    //    blueView.self.layer.cornerRadius = 10
    //
    //    // border
    //    blueView.self.layer.borderWidth = 1.0
    //    blueView.self.layer.borderColor = UIColor.black.cgColor
    //
    override func awakeFromNib() {
        
        super.awakeFromNib()
        self.layer.cornerRadius = 15.0
        self.layer.shadowRadius = 2.0
        self.layer.shadowColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        self.layer.borderWidth = 1.0
        self.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        //        let shadowPath = UIBezierPath(rect: self.bounds)
        //       // self.layer.cornerRadius = 10.0
        //        self.layer.masksToBounds = false
        //        self.layer.shadowColor = #colorLiteral(red: 0.3176470697, green: 0.07450980693, blue: 0.02745098062, alpha: 1)
        //        self.layer.shadowOffset = CGSize(width: 0, height: 0.7)
        //       self.layer.shadowOpacity = 0.2
        //        self.layer.shadowPath = shadowPath.cgPath
        //        //self.layer.shadowRadius = 30
        //
        
    }
    
}



class LoginBtnShadowOne: UIView {
    
    
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
        
        let border = CALayer()
        let width = CGFloat(1.0)
        
        self.layer.addSublayer(border)
        self.layer.cornerRadius = 15.0
        self.layer.shadowRadius = 2.0
        self.layer.shadowColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        self.layer.borderWidth = width
        
        self.layer.borderColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
        self.layer.addSublayer(border)
        //        let shadowPath = UIBezierPath(rect: self.bounds)
        //       // self.layer.cornerRadius = 10.0
        //        self.layer.masksToBounds = false
        //        self.layer.shadowColor = #colorLiteral(red: 0.3176470697, green: 0.07450980693, blue: 0.02745098062, alpha: 1)
        //        self.layer.shadowOffset = CGSize(width: 0, height: 0.7)
        //       self.layer.shadowOpacity = 0.2
        //        self.layer.shadowPath = shadowPath.cgPath
        //        //self.layer.shadowRadius = 30
        //
        
    }
    
}



class LoginBtnShadowTwo: UIView {
    
    
    
    //
    //    blueView.self.layer.cornerRadius = 10
    //
    //    // border
    //    blueView.self.layer.borderWidth = 1.0
    //    blueView.self.layer.borderColor = UIColor.black.cgColor
    //
    override func awakeFromNib() {
        
        super.awakeFromNib()
        self.layer.cornerRadius = 15.0
        self.layer.shadowRadius = 2.0
        self.layer.shadowColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        // self.layer.borderWidth = 1.0
        //self.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        //        let shadowPath = UIBezierPath(rect: self.bounds)
        //       // self.layer.cornerRadius = 10.0
        //        self.layer.masksToBounds = false
        //        self.layer.shadowColor = #colorLiteral(red: 0.3176470697, green: 0.07450980693, blue: 0.02745098062, alpha: 1)
        //        self.layer.shadowOffset = CGSize(width: 0, height: 0.7)
        //       self.layer.shadowOpacity = 0.2
        //        self.layer.shadowPath = shadowPath.cgPath
        //        //self.layer.shadowRadius = 30
        //
        
    }
    
}


@IBDesignable
class gradientView: UIView {
    
    @IBInspectable var topColor: UIColor = UIColor.blue {
        
        didSet {
            self.setNeedsLayout()
        }
    }
    
    @IBInspectable var bottomColor: UIColor = UIColor.green {
        
        didSet {
            self.setNeedsLayout()
        }
        
        
    }
    override func layoutSubviews() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.5, y : 0)
        gradientLayer.endPoint = CGPoint(x: 0.5, y : 1)
        gradientLayer.frame = self.bounds
        gradientLayer.locations = [0.05, 0.99]
        self.layer.insertSublayer(gradientLayer, at: 0)
        
        
    }
    
}


@IBDesignable
class gradientViewTwo: UIView {
    
    @IBInspectable var topColor: UIColor = UIColor.blue {
        
        didSet {
            self.setNeedsLayout()
        }
    }
    
    @IBInspectable var bottomColor: UIColor = UIColor.green {
        
        didSet {
            self.setNeedsLayout()
        }
        
        
    }
    override func layoutSubviews() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.5, y : 0)
        gradientLayer.endPoint = CGPoint(x: 0.5, y : 1)
        gradientLayer.frame = self.bounds
        gradientLayer.locations = [0.05, 0.99]
        self.layer.insertSublayer(gradientLayer, at: 0)
        
        
    }
    
}




@IBDesignable
class gradientViewThree: UIView {
    
    @IBInspectable var topColor: UIColor = UIColor.blue {
        
        didSet {
            self.setNeedsLayout()
        }
    }
    
    @IBInspectable var bottomColor: UIColor = UIColor.green {
        
        didSet {
            self.setNeedsLayout()
        }
        
        
    }
    override func layoutSubviews() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
        gradientLayer.startPoint = CGPoint(x: 1.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
        gradientLayer.frame = self.bounds
        //gradientLayer.locations = [0.85, 0.05]
        self.layer.insertSublayer(gradientLayer, at: 0)
        
        
    }
    
}




class ShadedUIView: UIView {
    override func awakeFromNib() {
        
        super.awakeFromNib()
        
        
        
        self.layer.masksToBounds = false
        
        
        
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 0, height: 0.0)
        layer.shadowOpacity = 0.2
        layer.shadowRadius = 10.0
        
    }
    
    
}


/// Rounded UIView
class RoundedUIView: UIView {
    override func awakeFromNib() {
        
        super.awakeFromNib()
        
        self.layer.cornerRadius = 10.0
        self.layer.masksToBounds = true
    }
    
    
}



class BorderBottom: UIView {
    
    
    override func awakeFromNib() {
        
        
        let border = CALayer()
        let width = CGFloat(0.7)
        border.borderColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        
        //self.layer.cornerRadius = 10.0
        //
        border.frame = CGRect(x: 0, y: self.frame.size.height - width, width:  self.frame.size.width, height: self.frame.size.height)
        border.borderWidth = width
        
        //self.layer.cornerRadius = 10.0
        self.layer.addSublayer(border)
        self.layer.masksToBounds = true
        
    }
}


