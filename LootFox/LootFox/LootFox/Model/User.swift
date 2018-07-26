//
//  User.swift
//  LootFox
//
//  Created by Landon Carr on 6/26/18.
//  Copyright © 2018 Landon Carr. All rights reserved.
//

import Foundation
import UIKit



  
    class User {
        
        var email: String!
        
        var profileImageURL: String?
        var userName: String?
        var profileImageUID: String?
        var profileImageload: UIImage?
        
        
        
        init(userEmail: String,  profileImageURL: String, userName: String, profileImageUID: String,profileImageload: UIImage) {
            self.email = userEmail
            
            self.profileImageURL = profileImageURL
            self.userName = userName
            self.profileImageUID = profileImageUID
            self.profileImageload = profileImageload
    
        }    
}


