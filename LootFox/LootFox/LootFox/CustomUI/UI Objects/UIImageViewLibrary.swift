
//  ProfileImageView.swift
//  LootFox
//
//  Created by Landon Carr on 6/26/18.
//  Copyright © 2018 Landon Carr. All rights reserved.
//

import Foundation
import UIKit

class ProfileImageVew: UIImageView {
    

    
    override func awakeFromNib() {
        
        self.layer.borderWidth = 0.0
        //self.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.layer.cornerRadius = frame.height/2
        let opacity:CGFloat = 1.0
        let borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        self.layer.borderColor = borderColor.withAlphaComponent(opacity).cgColor
        
    }

    }




class IconImageView: UIImageView {
    
    
    
    override func awakeFromNib() {
        
        self.layer.borderWidth = 0.0
        //self.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.layer.cornerRadius = 15
        let opacity:CGFloat = 1.0
        let borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        self.layer.borderColor = borderColor.withAlphaComponent(opacity).cgColor
        
    }
    //    override func layoutSubviews() {
    //        super.layoutSubviews()
    //        //             let border = CALayer()
    //        //             let width = CGFloat(4.0)
    //        //            border.borderWidth = width
    //        layer.cornerRadius = frame.height/2
    //        layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    //        //layer.borderColor = isEnabled ? tintColor.cgColor : UIColor.lightGray.cgColor
    //    }
    
}



class RoundColoredProfileImage: UIImageView {
    
    
    
    override func awakeFromNib() {
        
        self.layer.borderWidth = 1.0
        self.layer.borderColor = #colorLiteral(red: 0.01176470588, green: 0.9490196078, blue: 0.6431372549, alpha: 1)
        self.layer.cornerRadius = frame.height/2
//        let opacity:CGFloat = 1.0
//        let borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
//        self.layer.borderColor = borderColor.withAlphaComponent(opacity).cgColor
        
    }
    
}
