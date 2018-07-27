//
//  CreateUserExt.swift
//  LootFox
//
//  Created by Landon Carr on 7/8/18.
//  Copyright © 2018 Landon Carr. All rights reserved.
//

import Foundation
import UIKit


extension CreateUserVC {
    
    
    
    
    @objc  func handleKeyboardDidShow (notification: NSNotification)
        
    {
       
        let currentFrame = (notification.userInfo![UIResponder.keyboardFrameBeginUserInfoKey] as! NSValue).cgRectValue
        let targetFrame = (notification.userInfo![UIResponder.keyboardFrameEndUserInfoKey] as! NSValue).cgRectValue
        let deltaY = targetFrame.origin.y - currentFrame.origin.y

       
       let bottomInset = view.safeAreaInsets.bottom
     
       self.createUserViewBottomConstraint.constant =  -deltaY - bottomInset + 10 

        UIView.animate(withDuration: 0.5,animations: {
            
            self.view.layoutIfNeeded()
            
        })
        
    }
    
    @objc func handleKeyboardWillHide(notification: NSNotification)
    {
        
        
      
        self.createUserViewBottomConstraint.constant = 0
        
        UIView.animate(withDuration: 0.5,animations: {
            
            self.view.layoutIfNeeded()
            
        })
        
    }
    

}
