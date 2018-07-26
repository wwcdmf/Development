////
////  Rotation.swift
////  LootFox
////
////  Created by Landon Carr on 6/30/18.
////  Copyright © 2018 Landon Carr. All rights reserved.
////
//
//import Foundation
//
//import UIKit
//
//
//
//
//extension DiscoverVC {
//    func rotate2(imageView: UIImageView, aCircleTime: Double) { //UIView
//        
//        UIView.animate(withDuration: aCircleTime/2, delay: 0.0, options: .curveLinear, animations: {
//            imageView.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi))
//        }, completion: { finished in
//            UIView.animate(withDuration: aCircleTime/2, delay: 0.0, options: .curveLinear, animations: {
//                imageView.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi*2))
//            }, completion: { finished in
//                self.rotate2(imageView: imageView, aCircleTime: aCircleTime)
//            })
//        })
//    }
//
//}
