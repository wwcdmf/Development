////
////  LManagerCell.swift
////  LootFox
////
////  Created by Landon Carr on 6/26/18.
////  Copyright © 2018 Landon Carr. All rights reserved.
////
//
//
//
//
import UIKit

class LManagerCell: UITableViewCell {
   
    
    
    
    @IBOutlet weak var beaconImage: UIImageView!
    @IBOutlet weak var beaconUID: UILabel!
    
    
    func configureCell(beaconImage: UIImage, beaconUID: String) {
        self.beaconImage.image = beaconImage
        self.beaconUID.text = beaconUID
       
    }
    
}
