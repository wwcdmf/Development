//
//  PushPop.swift
//  LootFox
//
//  Created by Landon Carr on 7/28/18.
//  Copyright © 2018 Landon Carr. All rights reserved.
//

import Foundation
import UIKit
import CoreMotion




class OfferCell: UITableViewCell {
    
    // IBOutlets
    // Last Update : July 10th 2018
    // -----------------------------------------------------------------------
    //
    @IBOutlet weak var advertisement: UIImageView!
    
    @IBOutlet weak var companyLogo: UIImageView!
    
    @IBOutlet weak var companyName: UILabel!
    
    @IBOutlet weak var advertisementPostTimeStamp: UILabel!
    
    @IBOutlet weak var advertisementURL: UILabel?
    
    @IBOutlet weak var advertisementExpire: UILabel!
    
    @IBOutlet weak var advertisementBlip: UILabel?
    
    // FUNCTION configure Cell
    // Last Update : July 10th 2018
    // -----------------------------------------------------------------------
    //
    func configureCell(
        companyName: String,
        companyLogo: UIImage,
        advertisement: UIImage,
        advertisementPostTimeStamp: String,
        advertisementURL: String,
        advertisementExpire: String,
        advertisementBlip: String) {
        
        self.companyName?.text = companyName
        self.companyLogo?.image = companyLogo
        self.advertisement?.image = advertisement
        self.advertisementPostTimeStamp?.text = advertisementPostTimeStamp
        self.advertisementURL?.text = advertisementURL
        self.advertisementExpire?.text = advertisementExpire
        self.advertisementBlip?.text = advertisementBlip
        
    }

    
    
    
    
//}


//internal class BaseRoundedCardCell: UITableViewCell {

    internal static let cellHeight: CGFloat = 470.0
    
    private static let kInnerMargin: CGFloat = 20.0
    
    /// Core Motion Manager
    private let motionManager = CMMotionManager()
    
    /// Long Press Gesture Recognizer
    private var longPressGestureRecognizer: UILongPressGestureRecognizer? = nil
    
    /// Is Pressed State
    private var isPressed: Bool = false
    
    /// Shadow View
    private weak var shadowView: UIView?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        configureGestureRecognizer()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        configureShadow()
    }
    
    // MARK: - Shadow
    
    private func configureShadow() {
        // Shadow View
        self.shadowView?.removeFromSuperview()
        let shadowView = UIView(frame: CGRect(x: OfferCell.kInnerMargin,
                                              y: OfferCell.kInnerMargin,
                                              width: bounds.width - (2 * OfferCell.kInnerMargin),
                                              height: bounds.height - (2 * OfferCell.kInnerMargin)))
        insertSubview(shadowView, at: 0)
        self.shadowView = shadowView
        
        // Roll/Pitch Dynamic Shadow
        if motionManager.isDeviceMotionAvailable {
            motionManager.deviceMotionUpdateInterval = 0.02
            motionManager.startDeviceMotionUpdates(to: .main, withHandler: { (motion, error) in
                if let motion = motion {
                    let pitch = motion.attitude.pitch * 10 // x-axis
                    let roll = motion.attitude.roll * 10 // y-axis
                    self.applyShadow(width: CGFloat(roll), height: CGFloat(pitch))
                }
            })
        }
    }
    
    private func applyShadow(width: CGFloat, height: CGFloat) {
        if let shadowView = shadowView {
            let shadowPath = UIBezierPath(roundedRect: shadowView.bounds, cornerRadius: 14.0)
            shadowView.layer.masksToBounds = false
            shadowView.layer.shadowRadius = 8.0
            shadowView.layer.shadowColor = UIColor.black.cgColor
            shadowView.layer.shadowOffset = CGSize(width: width, height: height)
            shadowView.layer.shadowOpacity = 0.35
            shadowView.layer.shadowPath = shadowPath.cgPath
        }
    }
    
    // MARK: - Gesture Recognizer
    
    private func configureGestureRecognizer() {
        // Long Press Gesture Recognizer
        longPressGestureRecognizer = UILongPressGestureRecognizer(target: self, action: #selector(handleLongPressGesture(gestureRecognizer:)))
        longPressGestureRecognizer?.minimumPressDuration = 0.1
        addGestureRecognizer(longPressGestureRecognizer!)
    }
    
    @objc internal func handleLongPressGesture(gestureRecognizer: UILongPressGestureRecognizer) {
        if gestureRecognizer.state == .began {
            handleLongPressBegan()
        } else if gestureRecognizer.state == .ended || gestureRecognizer.state == .cancelled {
            handleLongPressEnded()
           
            
        }
    }
    
    private func handleLongPressBegan() {
        guard !isPressed else {
            return
        }
        
        isPressed = true
        UIView.animate(withDuration: 0.5,
                       delay: 0.0,
                       usingSpringWithDamping: 0.8,
                       initialSpringVelocity: 0.2,
                       options: .beginFromCurrentState,
                       animations: {
                        self.transform = CGAffineTransform(scaleX: 0.95, y: 0.95)
        }, completion: nil)
    }
    
    private func handleLongPressEnded() {
        guard isPressed else {
            return
        }
        
        UIView.animate(withDuration: 0.5,
                       delay: 0.0,
                       usingSpringWithDamping: 0.4,
                       initialSpringVelocity: 0.2,
                       options: .beginFromCurrentState,
                       animations: {
                        self.transform = CGAffineTransform.identity
        }) { (finished)  in
           
            self.isPressed = false
        }
    }
    
    
//    @objc func getCurrentViewController() -> UIViewController? {
//        if let rootController = UIApplication.shared.keyWindow?.rootViewController {
//            var currentController: UIViewController! = rootController
//            while( currentController.presentedViewController != nil ) {
//                currentController = currentController.presentedViewController
//            }
//            return currentController
//        }
//        return nil
//    }
//    
//    
//    @objc  func ProfileSegue()  {
//        let storyboard: UIStoryboard = UIStoryboard (name: "Main", bundle: nil)
//        let vc: SettingsVC = storyboard.instantiateViewController(withIdentifier: "SettingsVC") as! SettingsVC
//        let currentController = self.getCurrentViewController()
//        currentController?.present(vc, animated: false, completion: nil)
//        
//    }
}


