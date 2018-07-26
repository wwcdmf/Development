//
//  CasinoTopFeedCell.swift
//  LootFox
//
//  Created by Landon Carr on 6/30/18.
//  Copyright © 2018 Landon Carr. All rights reserved.
//

import UIKit

class CasinoTopFeedCell: UICollectionViewCell {
    
    @IBOutlet weak var companyLogo: UIImageView!
    @IBOutlet weak var companyGAd: UIImageView!
    @IBOutlet weak var companyName: UILabel!
    

    func configureCell(Logo: UIImage, Advertisement: UIImage, cName: String) {
        self.companyLogo.image = Logo
        self.companyGAd.image = Advertisement
        self.companyName.text = cName
       
        
    }
    
}
