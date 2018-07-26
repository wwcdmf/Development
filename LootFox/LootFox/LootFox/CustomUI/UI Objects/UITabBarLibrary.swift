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
       

        self.barTintColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        self.unselectedItemTintColor =  #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)   //UIColor.black
        self.layer.borderColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        self.layer.borderWidth = 0.7
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
