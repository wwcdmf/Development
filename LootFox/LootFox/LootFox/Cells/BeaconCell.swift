//
//  BeaconCell.swift
//  LootFox
//
//  Created by Landon Carr on 7/23/18.
//  Copyright © 2018 Landon Carr. All rights reserved.
//

import Foundation
import UIKit
class BeaconCell: UITableViewCell {
    
    
    

    @IBOutlet weak var beaconImage: UIImageView!
    @IBOutlet weak var beaconUID: UILabel!
    @IBOutlet weak var beaconLocation: UILabel!
    
    
    func configureCell(beaconImage: UIImage, beaconUID: String, beaconLocation: String) {
        self.beaconImage.image = beaconImage
        self.beaconUID.text = beaconUID
        self.beaconLocation.text = beaconLocation
    }
    
}
