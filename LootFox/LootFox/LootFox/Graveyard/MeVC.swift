////
////  FirstViewController.swift
////  LootFox
////
////  Created by Landon Carr on 6/26/18.
////  Copyright © 2018 Landon Carr. All rights reserved.
////
//
//import UIKit
//import Foundation
//import Firebase
//import Alamofire
//
//
//class MeVC: UIViewController,UICollectionViewDelegate, UICollectionViewDataSource {
// }
//
//
//
//    @IBOutlet weak var profileImage: UIImageView!
//    @IBOutlet weak var usernameLbl: UILabel!
//
//
//
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
////        DataService.instance.getCurrentUser { (userData) in
////            self.usernameLbl.text = userData.userName
////            let imageURl = userData.profileImageURL
////            //let remoteImageURL = URL(string: imageURl!)
////            print("PROFILE NAME MVC: \(userData.userName)")
////            print("PROFILE IMAGE UID MVC: \(userData.profileImageUID)")
////            print("PROFILE IMAGE URL MVC: \(userData.profileImageURL)")
////            let remoteImageURL = URL(string: imageURl!)
////            if remoteImageURL != nil {
////                let remoteImageURL = URL(string: imageURl!)
////                Alamofire.request(remoteImageURL!).responseData { (response) in
////                    if response.error == nil {
////                        print(response.result)
////
////                        // Show the downloaded image:
////                        if let data = response.data {
////                            self.profileImage.image = UIImage(data: data)
////                        }
////                    }
////                }
////
////            }
////
////        }
//    }
//
//
//
////////////////////////////////////////////////////////////////////////////////////////////
//
////
////
////
////
////
////
////
//    override func viewWillAppear(_ animated: Bool) {
//
//        
//        DataService.instance.getCurrentUser { (userData) in
//            
//            print("LOCATION : MeVC \(String(describing: userData.userName)) : CHECK 2")
//            print("PROFILE IMAGE UID VWA: \(String(describing: userData.profileImageUID)) : CHECK 2")
//            print("PROFILE IMAGE URL VWA: \(String(describing: userData.profileImageURL)) : CHECK 2")
//
//           self.usernameLbl.text = userData.userName
//           self.profileImage.image = userData.profileImageload
//            
//        }
////            //let remoteImageURL = URL(string: imageURl!)
////            print("PROFILE NAME VWA: \(userData.userName)")
////            print("PROFILE IMAGE UID VWA: \(userData.profileImageUID)")
////            print("PROFILE IMAGE URL VWA: \(userData.profileImageURL)")
////            let remoteImageURL = URL(string: imageURl!)
////            if remoteImageURL != nil {
////                        let remoteImageURL = URL(string: imageURl!)
////                        Alamofire.request(remoteImageURL!).responseData { (response) in
////                            if response.error == nil {
////                                print(response.result)
////
////                                // Show the downloaded image:
////                                if let data = response.data {
////                                    self.profileImage.image = UIImage(data: data)
////                                }
////                            }
////                        }
////
////        }
////
////        }
////
//       super.viewWillAppear(animated)
//        }
//
//
//
//  // HANDLES LOGOUT FUNCTIONALITY
//    @IBAction func signOutBtnPressed(_ sender: Any) {
//        
//        let logoutPopup = UIAlertController(title: "Logout?", message: "Are you sure you want to logout?", preferredStyle: .actionSheet)
//        let logoutAction = UIAlertAction(title: "Logout", style: .destructive) { (buttonTapped) in
//            do  {
//
//                try Auth.auth().signOut()
//                let authVC = self.storyboard?.instantiateViewController(withIdentifier: "AuthVC") as? AuthVC
//                self.present(authVC!, animated: true, completion: nil)
//            } catch {
//                print(error)
//            }
//        }
//
//        logoutPopup.addAction(logoutAction)
//        present(logoutPopup, animated: true, completion: nil)
//    }
//////////////
//    @IBAction func addToWalletPressed(_ sender: UIButton) {
//        
//        UIButton.animate(withDuration: 0.7,
//                         animations: {
//                            sender.transform = CGAffineTransform(scaleX: 0.975, y: 0.96)
//        },
//                         completion: { finish in
//                            UIButton.animate(withDuration: 0.09, animations: {
//                                sender.transform = CGAffineTransform.identity
//                            })
//        })
//    }
//
//    @IBAction func noThankYouPressed(_ sender: UIButton) {
//        
//        
//        
//        UIButton.animate(withDuration: 0.7,
//                         animations: {
//                            sender.transform = CGAffineTransform(scaleX: 0.975, y: 0.96)
//        },
//                         completion: { finish in
//                            UIButton.animate(withDuration: 0.08, animations: {
//                                sender.transform = CGAffineTransform.identity
//                            })
//        })
//    }
//
//}
//
