//
//  ManagementOfferDesignVC.swift
//  LootFox
//
//  Created by Landon Carr on 7/22/18.
//  Copyright © 2018 Landon Carr. All rights reserved.
//

import UIKit
import Foundation

class ManagementOfferDesignVC: UIViewController,UINavigationControllerDelegate,UIImagePickerControllerDelegate {

    
    @IBOutlet weak var offerImage: UIImageView!
    @IBOutlet weak var offerBarcode: UIImageView!
    
   
    var imagePicker = UIImagePickerController()
    var imagePicked = 0
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

    offerImage.isUserInteractionEnabled = true
    offerBarcode.isUserInteractionEnabled = true
    offerImage.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.handleOffer)))
    offerBarcode.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.handleBarcode)))
    
   
    }
    

   
     @IBAction func done(_ sender: Any) {

        let ManagementLocationOffersVC = storyboard?.instantiateViewController(withIdentifier: "ManagementLocationOffersVC")
        present(ManagementLocationOffersVC!, animated: true, completion: nil)
     }
    
}
