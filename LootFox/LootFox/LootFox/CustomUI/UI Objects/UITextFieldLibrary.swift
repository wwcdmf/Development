//
//  TextFieldView.swift
//  LootFox
//
//  Created by Landon Carr on 6/26/18.
//  Copyright © 2018 Landon Carr. All rights reserved.
//


import Foundation
import UIKit

class TextFieldView: UITextField {
    
    private var padding = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 0)
    


override func awakeFromNib() {
    
    // Place Holder ( Choose Color)
    let placeholder = NSAttributedString(string: self.placeholder!, attributes: [NSAttributedString.Key.foregroundColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)])
    self.attributedPlaceholder = placeholder
    /// UITextField (Border Appearance)
//    let border = CALayer()
//    let width = CGFloat(5.0)
   // border.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
//
//    self.layer.cornerRadius = 10.0
    //
//    border.frame = CGRect(x: 0, y: self.frame.size.height - width, width:  self.frame.size.width, height: self.frame.size.height)
    
  //// TEST tEST TEST ////
//    let border = CALayer()
//    let width = CGFloat(1.0)
//    
  //  self.layer.addSublayer(border)
    self.layer.cornerRadius = 10.0
//    self.layer.shadowRadius = 2.0
//    self.layer.shadowColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
//    self.layer.borderWidth = width
    
    self.layer.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2502140411)
//
//    self.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
//    self.layer.addSublayer(border)
//    border.borderWidth = width
//    self.layer.addSublayer(border)
//    self.layer.masksToBounds = true

    
    //// TEST tEST TEST ////
    super.awakeFromNib()
}
    // UITextField (adds Image option to UITextField)
    override func leftViewRect(forBounds bounds: CGRect) -> CGRect {
        var textRect = super.leftViewRect(forBounds: bounds)
        textRect.origin.x += leftPadding
        return textRect
    }

    @IBInspectable var leftImage: UIImage? {
        didSet {
            updateView()
        }
    }

    @IBInspectable var leftPadding: CGFloat = 0

    @IBInspectable var color: UIColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1) {
        didSet {
            updateView()
        }
    }

    func updateView() {
        if let image = leftImage {
            leftViewMode = UITextField.ViewMode.always
            let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 50, height: 25))
            imageView.contentMode = .scaleAspectFit
            imageView.image = image
            // Note: In order for your image to use the tint color, you have to select the image in the Assets.xcassets and change the "Render As" property to "Template Image".
            imageView.tintColor = color
            leftView = imageView
        } else {
            leftViewMode = UITextField.ViewMode.never
            leftView = nil
        }

        // Placeholder text color
        attributedPlaceholder = NSAttributedString(string: placeholder != nil ?  placeholder! : "", attributes:[NSAttributedString.Key.foregroundColor: color])
    }
}

