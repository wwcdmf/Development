////
////  RelationService.swift
////  blackmagk_development
////
////  Created by Landon Carr on 6/12/18.
////  Copyright © 2018 Landon Carr. All rights reserved.
////
//
///*
// Header: Import SDKs
// Implementation: Import functionality of other SDKS available
// */
//import Foundation
//import Firebase
//import Alamofire
//
//
//
//class FriendSystem {
//    
//static let system = FriendSystem()
//   
//   let REF_USERS_UID = Auth.auth().currentUser?.uid
//  
//            
//            
//    
//
//    
//    
//    
//    
//
// // private var REF_USERS_UID = Auth.auth().currentUser?.uid
//    
//    
//    
///*
//Header: Import SDKs
//Implementation: Import functionality of other SDKS available
//*/
//
///** The Firebase reference to the current user tree */
//     var CURRENT_REF_USERS: DatabaseReference {
//        return DataService.instance.REF_USERS.child("\(REF_USERS_UID)")
//    }
//    
//    
//
//    
//    
//    /** The Firebase reference to the current user's friend tree */
//     var CURRENT_REF_USERS_FRIENDS: DatabaseReference {
//        return CURRENT_REF_USERS.child("friends")
//    }
//    
//    /** The Firebase reference to the current user's friend request tree */
//    var CURRENT_REF_USERS_REQUESTS: DatabaseReference {
//        return CURRENT_REF_USERS.child("requests")
//    }
//    
//    /** The current user's id */
//     var REF_USERS_ID: String {
////        let id = Auth.auth().currentUser!.uid
////        return id
//        
//        return REF_USERS_UID!
//    }
//  
//
//    
//    
//    
//    
//  
//    
//    
//    /** Gets the current User object for the specified user id */
//    
//
// 
//    
//   
//}
//    
//
//    
//
//
//
//
//
