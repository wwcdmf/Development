//
//  CasinoBottomFeedCell.swift
//  LootFox
//
//  Created by Landon Carr on 7/1/18.
//  Copyright © 2018 Landon Carr. All rights reserved.
//

import UIKit

class bottomFC: UICollectionViewCell {
    
    @IBOutlet weak var compnayAdBottom: UIImageView!
    
    @IBOutlet weak var companyLogoBottom: UIImageView!
    
    @IBOutlet weak var companyNameBottom: UILabel!
    
    @IBOutlet weak var companyTimeStamp: UILabel!
    
    func configureCell(companyLogoBottom: UIImage, companyNameBottom: String, companyAdBottom: UIImage, companyPlacementInterval: String) {
        
        self.compnayAdBottom.image = companyAdBottom
        self.companyLogoBottom.image = companyLogoBottom
        self.companyNameBottom.text = companyNameBottom
        self.companyTimeStamp.text = companyPlacementInterval
    }
}
