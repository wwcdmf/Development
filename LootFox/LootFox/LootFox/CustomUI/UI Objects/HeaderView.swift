//
//  HeaderView.swift
//  LootFox
//
//  Created by Landon Carr on 7/27/18.
//  Copyright © 2018 Landon Carr. All rights reserved.
//

import UIKit
import Foundation

class HeaderView: UIView {

    @IBOutlet var contentView: UIView!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var dateLbl: UILabel!
    
     var dataLoaded = false
    
    
    
  
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
        
    }
    
    @objc func getCurrentViewController() -> UIViewController? {
        if let rootController = UIApplication.shared.keyWindow?.rootViewController {
            var currentController: UIViewController! = rootController
            while( currentController.presentedViewController != nil ) {
                currentController = currentController.presentedViewController
            }
            return currentController
        }
        return nil  
    }
    
    @objc  func ProfileSegue()  {
        let storyboard: UIStoryboard = UIStoryboard (name: "Main", bundle: nil)
        let vc: SettingsVC = storyboard.instantiateViewController(withIdentifier: "SettingsVC") as! SettingsVC
        let currentController = self.getCurrentViewController()
        currentController?.present(vc, animated: false, completion: nil)
        
    }
    
    private func commonInit() {
        Bundle.main.loadNibNamed("HeaderView", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        if self.dataLoaded == false {
            DataService.instance.getCurrentUser { (userData) in
                print("LOADING SCROLLVIEW PROFILE IMAGE")
                self.dataLoaded.toggle()
                print("\(self.dataLoaded): DataState")
                self.profileImage.contentMode = .scaleAspectFill
                self.profileImage.image = userData.profileImageload
                self.profileImage.isUserInteractionEnabled = true
                self.profileImage.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.ProfileSegue)))
            }
        }
    }
}



