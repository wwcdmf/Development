//
//  HeaderView.swift
//  LootFox
//
//  Created by Landon Carr on 7/27/18.
//  Copyright © 2018 Landon Carr. All rights reserved.
//

import UIKit

class HeaderView: UIView {

    @IBOutlet var contentView: UIView!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var statusLbl: UILabel!
    var dataLoaded = false
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
        
    }
    
    private func commonInit() {
        
        Bundle.main.loadNibNamed("HeaderView", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        if self.dataLoaded == false {
            DataService.instance.getCurrentUser { (userData) in
                
                print("LOADING USER DATA INTO MYOFFERS")
                
                self.dataLoaded.toggle()
                print("\(self.dataLoaded): PHASE 1")
                self.profileImage.contentMode = .scaleAspectFill
                self.profileImage.image = userData.profileImageload
                
                
            }
        }
    }
}
