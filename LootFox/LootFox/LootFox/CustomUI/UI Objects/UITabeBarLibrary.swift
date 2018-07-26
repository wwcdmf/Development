//
//  TabBar.swift
//  LootFox
//
//  Created by Landon Carr on 7/14/18.
//  Copyright © 2018 Landon Carr. All rights reserved.
//

import UIKit

class CustomTabBar: UITabBar {

    
    override func awakeFromNib() {
       

        self.barTintColor = #colorLiteral(red: 0.3025259674, green: 0.07894495875, blue: 0.4087719917, alpha: 1)
        self.unselectedItemTintColor = UIColor.white
        
        self.sizeThatFits(CGSize(width: 15, height: 15))
        self.backgroundImage = UIImage()
        self.shadowImage = UIImage()
        
        self.clipsToBounds = true
        
        
        
        
        
        
        

        
        
        
//        @IBDesignable
//        class TopRoundedView: UIView {
//
//            override func awakeFromNib() {
//
//                self.clipsToBounds = true
//                self.layer.cornerRadius = 15
//                self.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
//
//
//
//            }
//        }
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
