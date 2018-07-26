//
//  OfferCell.swift
//  LootFox
//
//  Created by Landon Carr on 7/10/18.
//  Copyright © 2018 Landon Carr. All rights reserved.
//

   // IMPORTS
   // Last Update : July 10th 2018
   // -----------------------------------------------------------------------
   //
import Foundation
import UIKit

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
    

  
}
