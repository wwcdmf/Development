//
//  DataService.swift
//  blackmagk_development
//
//  Created by Landon Carr on 5/28/18.
//  Copyright © 2018 Landon Carr. All rights reserved.
//

/*
 Header: Import SDKs
 Implementation: Import functionality of other SDKS available
*/

import Foundation
import Firebase
import Alamofire

/*
 Header: Firebase References
 Implementation: Reference the DB and Storage of Firebase
*/

let DB_BASE = Database.database().reference()
let store = Storage.storage()
let storeRef = store.reference()
let DB_STORAGE = storeRef



/*
 Header: Data Service Class
 Implementation: Designed to handle data references to different nodes
*/

class DataService {
    
    
    static let instance = DataService()
/*
Header: Private Variables
Implementation: Designed to hide actual References if Decomiled
*/
 
    
    private var _REF_STORAGE = DB_STORAGE
    private var _REF_STORAGE_IMAGE = DB_STORAGE.child("profile_images")
    private var _REF_BASE = DB_BASE
    private var _REF_USERS = DB_BASE.child("users")
    private var _REF_MANAGERS = DB_BASE.child("managers")
    private var _REF_DEVICES = DB_BASE.child("devices")
    private var _REF_CONTENT_FEED = DB_BASE.child("contentfeed")
    private var _ANNOUNCEMENT_FEED = DB_BASE.child("announcementfeed")
    
    
    
    
    
    
    
    

/*
Header: Database references
Implementation: Database references stored and protected with different Aliases
*/
    
    var REF_BASE: DatabaseReference {
        return _REF_BASE
    }
    
    var REF_STORAGE: StorageReference {
        return _REF_STORAGE
    }
    
    var REF_STORAGE_IMAGE: StorageReference {
        return  _REF_STORAGE_IMAGE
    }
    
    
    var REF_USERS: DatabaseReference {
        return _REF_USERS
    }
    
    var REF_MANAGERS: DatabaseReference {
        return _REF_MANAGERS
    }
    
    var REF_DEVICES: DatabaseReference {
        return _REF_DEVICES
    }
    
    var REF_CONTENT_FEED: DatabaseReference {
        return _REF_CONTENT_FEED
    }
    
    var ANNOUNCEMENT_FEED: DatabaseReference {
        return _ANNOUNCEMENT_FEED
    }

///// ANNOUNCMENT FEED DATA CALL & RETURN /////
    
// announcmentUpload
    func announcmentUpload(announcement: String) {
        ANNOUNCEMENT_FEED.setValue(announcement)
    }

// announcmentUpload
    func getCurrentAnnouncement(completion: @escaping (_ getAnnouncementString: Announcement) -> ()) {
        if Auth.auth().currentUser?.uid != nil {
            ANNOUNCEMENT_FEED.observeSingleEvent(of: .value, with: { (snapshot) in
         
                let value = snapshot.value as? String
                let announcement = value ?? ""

                print("print return")

                completion(Announcement(announcementReturn: announcement))
                
            }) { (error) in
                print(error.localizedDescription)
            }
        } else {
            completion(Announcement(announcementReturn: ""))
        }
    }
    
//////////////////////////////////////////////
    
    
    
    
    func createDBUSER(uid: String, userData: Dictionary<String, Any>) {
       REF_USERS.child(uid).updateChildValues(userData)
    }
      //Function to create Managers
    func createDBMANAGER(uid: String, managerData: Dictionary<String, Any>) {
        REF_USERS.child(uid).updateChildValues(managerData)
    }
    

    func getCurrentUser(completion: @escaping (_ getUserData: User) -> ()) {
        if Auth.auth().currentUser?.uid != nil {
    let userID = Auth.auth().currentUser?.uid //?? "DxuJbKDdc9V8ml2JJUuSm4XWbot2"
        REF_USERS.child(userID!).observeSingleEvent(of: .value, with: { (snapshot) in
    // Get user value
    let value = snapshot.value as? NSDictionary
    let email = value?["email"] as? String ?? ""
    let userName = value?["userName"] as? String ?? ""
    let profileImageUID = value?["profileImageUID"] as? String ?? ""
    let profileImageURL = value?["profileImageURL"] as? String ?? ""
            
            
            print("PROFILE NAME DS: \(userName) : INITIATING...")
            print("PROFILE IMAGE UID DS: \(profileImageUID) : INITIATING...")
            print("PROFILE IMAGE URL DS: \(profileImageURL) : INITIATING...")
          /////
            let imageURl = profileImageURL
            let remoteImageURL = URL(string: imageURl)
            if remoteImageURL != nil {
                let remoteImageURL = URL(string: imageURl)
                Alamofire.request(remoteImageURL!).responseData { (response) in
                    if response.error == nil {
                        print(response.result)
                        
                        // Show the downloaded image:
                        if let data = response.data  {
                          //  self.profileImage.image = UIImage(data: data)
                            
                            let profileImage = UIImage(data: data)
                            if profileImage == nil {
                                return
                            } else {
                            
                            completion(User(userEmail: email, profileImageURL: profileImageURL , userName: userName, profileImageUID: profileImageUID, profileImageload: profileImage!))
                            }
                        }
                    }
                }
            }
                
            
            
            
            
            
            
          ////
      
          
            
    }) { (error) in
    print(error.localizedDescription)
    }
        } else {
            completion(User(userEmail: "", profileImageURL: "", userName: "", profileImageUID: "", profileImageload: #imageLiteral(resourceName: "defaultProfileImage")))
        }
    }
  //
    
    

    
}




