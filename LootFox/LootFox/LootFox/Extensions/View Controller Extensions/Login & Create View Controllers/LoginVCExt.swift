////
////  LoginVCExt.swift
////  LootFox
////
////  Created by Landon Carr on 7/8/18.
////  Copyright © 2018 Landon Carr. All rights reserved.
////
//
//
//
import Foundation
import UIKit
//
//

extension LoginVC {
    
    @objc func keyboardWillShow(notification: NSNotification) {
        if keyboardHeight != nil {
            return
        }
        
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            keyboardHeight = keyboardSize.height
            
            // so increase contentView's height by keyboard height
            UIView.animate(withDuration: 0.3, animations: {
                self.contentHeightConstraint.constant += self.keyboardHeight
            })
            
            // move if keyboard hide input field
            let distanceToBottom = self.scrollView.frame.size.height - (activeField?.frame.origin.y)! - (activeField?.frame.size.height)!
            let collapseSpace = keyboardHeight - distanceToBottom
            
            if collapseSpace < 0 {
                // no collapse
                return
            }
            
            // set new offset for scroll view
            UIView.animate(withDuration: 0.3, animations: {
                // scroll to the position above keyboard 10 points
                self.scrollView.contentOffset = CGPoint(x: self.lastOffset.x, y: collapseSpace + 10)
            })
        }
    }
    
//    @objc func keyboardWillHide(notification: NSNotification) {
//        UIView.animate(withDuration: 0.3) {
//            self.contentHeightConstraint.constant -= self.keyboardHeight
//
//            self.scrollView.contentOffset = self.lastOffset
//        }
//
//        keyboardHeight = nil
//    }
}
//extension LoginVC {
//    
//    @objc  func handleKeyboardDidShow (notification: NSNotification)
//        
//    {
//        
//        let currentFrame = (notification.userInfo![UIResponder.keyboardFrameBeginUserInfoKey] as! NSValue).cgRectValue
//        let targetFrame = (notification.userInfo![UIResponder.keyboardFrameEndUserInfoKey] as! NSValue).cgRectValue
//        let deltaY = targetFrame.origin.y - currentFrame.origin.y
//        
//        
//        let bottomInset = view.safeAreaInsets.bottom
//        
//        self.bottomLoginViewConstraint.constant =  -deltaY - bottomInset + 20
//        
//        //-deltaY - bottomInset + 20
//        
//        UIView.animate(withDuration: 0.5,animations: {
//            
//            self.view.layoutIfNeeded()
//            
//        })
//        
//    }
//    
//    @objc func handleKeyboardWillHide(notification: NSNotification)
//    {
//        
//        
//        
//        self.bottomLoginViewConstraint.constant = 0
//        
//        UIView.animate(withDuration: 0.5,animations: {
//            
//            self.view.layoutIfNeeded()
//            
//        })
//        
//    }
//    
//    
//}
