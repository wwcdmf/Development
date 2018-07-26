//
//  MyOffersPopUpVC.swift
//  LootFox
//
//  Created by Landon Carr on 7/12/18.
//  Copyright © 2018 Landon Carr. All rights reserved.
//

import UIKit

class MyOffersLoadVC: UIViewController {

    
    
    @IBOutlet weak var imageViewHolder: TopRoundedView!
    @IBOutlet weak var testSegueDataText: UILabel!
    @IBOutlet weak var MyOfferLoadAdvertisement: UIImageView!
    
    var recievedDataArray = [Any?]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.imageViewHolder.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(self.panGestureRecognizerHandler)))
        
        
        
        
        
      
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        self.MyOfferLoadAdvertisement.image = recievedDataArray[0] as? UIImage
    }
    

    
    // Function and Variables to Dimiss View when Slid Down with Touch Gesture
    var initialTouchPoint: CGPoint = CGPoint(x: 0,y: 0)
    
    @objc func panGestureRecognizerHandler(_ sender: UIPanGestureRecognizer) {
        let touchPoint = sender.location(in: self.imageViewHolder?.window)
        
        print("panGestureRecognizer is engaged")
        if sender.state == UIGestureRecognizer.State.began {
            initialTouchPoint = touchPoint
        } else if sender.state == UIGestureRecognizer.State.changed {
            if touchPoint.y - initialTouchPoint.y > 0 {
                
        // change the size of the view progamatically
//                self.view.frame = CGRect(x: 0, y: touchPoint.y - initialTouchPoint.y, width: self.imageViewHolder.frame.size.width, height: self.imageViewHolder.frame.size.height)
            }
        } else if sender.state == UIGestureRecognizer.State.ended || sender.state == UIGestureRecognizer.State.cancelled {
            if touchPoint.y - initialTouchPoint.y > 100 {
                self.dismiss(animated: true, completion: nil)
            } else {
                UIView.animate(withDuration: 0.3, animations: {
                    self.imageViewHolder.frame = CGRect(x: 0, y: 0, width: self.imageViewHolder.frame.size.width, height: self.imageViewHolder.frame.size.height)
                })
            }
        }
    }


}
