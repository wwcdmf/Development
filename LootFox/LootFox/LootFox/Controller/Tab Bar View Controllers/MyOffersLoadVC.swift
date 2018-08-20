//
//  MyOffersPopUpVC.swift
//  LootFox
//
//  Created by Landon Carr on 7/12/18.
//  Copyright © 2018 Landon Carr. All rights reserved.
//

import UIKit

class MyOffersLoadVC: UIViewController {

    //////
    @IBOutlet private weak var contentContainerView: UIView!
    @IBOutlet private weak var containerLeadingConstraint: NSLayoutConstraint!
    @IBOutlet private weak var containerTrailingConstraint: NSLayoutConstraint!
    @IBOutlet private weak var containerTopConstraint: NSLayoutConstraint!
    @IBOutlet private weak var containerBottomConstraint: NSLayoutConstraint!
    
    /// Header Image Height
    @IBOutlet private weak var headerImageHeightConstraint: NSLayoutConstraint!
    @IBOutlet private weak var headerImageView: UIImageView!
    
    
    
    
    
    /////
    
    @IBOutlet weak var imageViewHolder: TopRoundedView!
    @IBOutlet weak var testSegueDataText: UILabel!
    @IBOutlet weak var MyOfferLoadAdvertisement: UIImageView!
    
    var recievedDataArray = [Any?]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.imageViewHolder.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(self.panGestureRecognizerHandler)))
        
        self.headerImageView.image = recievedDataArray[0] as? UIImage
        
        
        
      
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
         self.headerImageView.image = recievedDataArray[0] as? UIImage
      //  self.MyOfferLoadAdvertisement.image = recievedDataArray[0] as? UIImage
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
////
    internal func positionContainer(left: CGFloat, right: CGFloat, top: CGFloat, bottom: CGFloat) {
        containerLeadingConstraint.constant = left
        containerTrailingConstraint.constant = right
        containerTopConstraint.constant = top
        containerBottomConstraint.constant = bottom
        view.layoutIfNeeded()
    }
    
    internal func setHeaderHeight(_ height: CGFloat) {
        headerImageHeightConstraint.constant = height
        view.layoutIfNeeded()
    }
    
    internal func configureRoundedCorners(shouldRound: Bool) {
        headerImageView.layer.cornerRadius = shouldRound ? 14.0 : 0.0
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    
    
    /////

}
