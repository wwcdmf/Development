//
//  MyOffersVC.swift
//  LootFox
//
//  Created by Landon Carr on 7/10/18.
//  Copyright © 2018 Landon Carr. All rights reserved.
//

import UIKit


class MyOffersVC: UIViewController {

   // IBOutlets for ViewController
    @IBOutlet var trueView: UIView!
    @IBOutlet weak var offersTableView: UITableView!
    @IBOutlet weak var profileImage: UIImageView!

   // Variables Necessary for Data Load & Contraints
    
    //
    internal let presentStoryAnimationController = PresentStoryViewAnimationController()
   // internal let dismissStoryAnimationController = DismissStoryViewAnimationController()
   //
    
    
    
    //
    
    var selectedDataArray = [Any?]()
    var contentViewHeight: CGFloat?
   // viewDidLoad() Sets Delegate & Reloads Data of the offersTableView
    override func viewDidLoad() {
        super.viewDidLoad()

        self.offersTableView.separatorStyle = .none
        self.offersTableView.delegate = self
        self.offersTableView.dataSource = self
        self.offersTableView.reloadData()
        
       
    }


   // videDidAppear()
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
}




extension MyOffersVC: UIViewControllerTransitioningDelegate {
    
    func animationController(forPresented presented: UIViewController,
                             presenting: UIViewController,
                             source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return presentStoryAnimationController
}

}








