//
//  LayoutTwo.swift
//  LootFox
//
//  Created by Landon Carr on 6/26/18.
//  Copyright © 2018 Landon Carr. All rights reserved.
//

import UIKit

class DiscoverVC: UIViewController

{

    

    @IBOutlet var trueView: UIView!
    @IBOutlet var particleView: UIView!



    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isTranslucent = false
           // self.displayView.isHidden = true
        createParticles()
        
        ////
        let pastelView = PastelView(frame: trueView.bounds)
        pastelView.startPastelPoint = .bottomLeft
        pastelView.endPastelPoint = .topRight
        
        pastelView.animationDuration = 3.0
        
        pastelView.setPastelGradient(CustomGradient.trueSunset)
        
        pastelView.startAnimation()
        trueView.insertSubview(pastelView, at: 0)
        ////
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func pushTo(viewController: UIViewController) {
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func actShowMenu(_ sender: Any) {

    }
    
 
    @IBAction func instragram(_ sender: Any) {
    
        
        let instagramHooks = "instagram://user?username=monarchcasino"
        let instagramUrl = URL(string: instagramHooks)

   
        
        if UIApplication.shared.canOpenURL(instagramUrl!) {
            UIApplication.shared.open(URL(string: instagramHooks)!)
        } else {
            //redirect to safari because the user doesn't have Instagram
            UIApplication.shared.open(URL(string: "http://instagram.com/")!)
        }


    
    }
}






//
//
//var instagramHooks = "instagram://user?username=johndoe"
//var instagramUrl = NSURL(string: instagramHooks)
//if UIApplication.sharedApplication().canOpenURL(instagramUrl!) {
//    UIApplication.sharedApplication().open(URL(string: instagramHooks)
//} else {
//    //redirect to safari because the user doesn't have Instagram
//    UIApplication.sharedApplication.open(URL(string: "http://instagram.com/")!)
//}
