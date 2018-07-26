//
//  NewUserVC.swift
//  LootFox
//
//  Created by Landon Carr on 6/26/18.
//  Copyright © 2018 Landon Carr. All rights reserved.
//




import UIKit
import Firebase
import Foundation




class CreateUserVC: UIViewController,UINavigationControllerDelegate,UIImagePickerControllerDelegate
{
    
//    @IBOutlet weak var scrollView: UIScrollView!
//    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var nameTextField: TextFieldView!
    @IBOutlet weak var emailTextField: TextFieldView!
    @IBOutlet weak var passwordTextField: TextFieldView!
    @IBOutlet weak var warninglbl: UILabel!
    @IBOutlet weak var successImage: UIImageView!
    @IBOutlet weak var profileImage: UIImageView!
 
    
    
 
    @IBOutlet weak var continueBtnPressed: UIButton!
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var createUserViewBottomConstraint: NSLayoutConstraint!

    
    var activeField: UITextField?
    var lastOffset: CGPoint!
    var keyboardHeight: CGFloat!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.delegate = self
        emailTextField.delegate = self
        passwordTextField.delegate = self
        
        successImage.isHidden = true
        profileImage.isUserInteractionEnabled = true
        contentView.isUserInteractionEnabled = true
        
        profileImage.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.handleSelectProfileImageView)))
        
        
        
//        ////
//        let pastelView = PastelView(frame: createUserGradientView.bounds)
//        pastelView.startPastelPoint = .bottomLeft
//        pastelView.endPastelPoint = .topRight
//
//        pastelView.animationDuration = 10.0
//
//        pastelView.setPastelGradient(CustomGradient.everlastingSky)
//
//        pastelView.startAnimation()
//        createUserGradientView.insertSubview(pastelView, at: 0)
//        ////
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(handleKeyboardDidShow),
                                               name: UIResponder.keyboardWillShowNotification,
                                               object: nil)
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(handleKeyboardWillHide),
                                               name: UIResponder.keyboardWillHideNotification,
                                               object: nil)
    }

    

    @IBAction func backBtnPressedNUVC(_ sender: Any) {

        dismiss(animated: true, completion: nil)
    
            
        }
    
    
  
   
    
    
        @IBAction func createBtnPressedNUVC(_ sender: Any) {
            
// (STEP 1) - REGISTER USER - Register user with email and password
            
if emailTextField.text != nil && passwordTextField.text != nil {
                    AuthService.instance.registerUser(withEmail: self.emailTextField.text!, andPassword: self.passwordTextField.text!, userCreationComplete: { (success, registrationError) in
        if success {
// (STEP 2) - SUCCESSFUL REGISTER - After successful register....Login User.
            
            let userUID = Auth.auth().currentUser?.uid
            let randomString = UUID().uuidString
//            let storageRefA = store.reference()
            let storageRefB = DataService.instance.REF_STORAGE.child("\(randomString).png")
            
            var userDataLoadOne = Dictionary<String, Any>()
            
// (STEP 3) - (Handle Profile Image Load)
        
        //////////////////////
            // Image set in View Controller
            let uploadImage = self.profileImage.image!.pngData()
            // let uploadImage = UIImagePNGRepresentation(self.profileImage.image!)
          
            // Upload the file to the path "images/rivers.jpg"
             storageRefB.putData(uploadImage!, metadata: nil) { (metadata, error) in
                if metadata != nil  {
                    print("SUCCESFUL IMAGE UPLOAD")
        //
                    storageRefB.downloadURL { (url, error) in
                        
                        if url != nil {
                        let downloadURL = url
                            
                        var userDataLoadTwo = Dictionary<String, Any>()
                            
                        userDataLoadTwo["profileImageURL"] = "\(downloadURL!)"
                         
                            print("IMAGE URL: \(downloadURL!)")
        DataService.instance.createDBUSER(uid: userUID!, userData: userDataLoadTwo)
                        
                            
                            
                        } else {
                            print(String(describing: error?.localizedDescription))
                            return
                        }
                        
                    }
                    
                    //
                    
                    //
                    
                } else {
                     print(String(describing: error?.localizedDescription))
                        return
                }


   
            }
            
        ///////
           
            userDataLoadOne["userName"] = self.nameTextField.text
            userDataLoadOne["profileImageUID"] = randomString
            
           // print(userDataLoadOne)
            
            
            
         
            DataService.instance.createDBUSER(uid: userUID!, userData: userDataLoadOne)
                        print("REGISTRATION SUCCESS")
          //
            
            
            // toggle images
            self.successImage.isHidden = false
            
          //Load
            
            DataService.instance.getCurrentUser(completion: { (userDataNewRegistration) in
                
//                let vc = MeVC(nibName: "MeVC", bundle: nil)
//                vc.profileImage.image = userDataNewRegistration.profileImageload
//                vc.usernameLbl.text = userDataNewRegistration.userName
//
                print("PROFILE NAME CUVC: \(String(describing: userDataNewRegistration.userName))")
                print("PROFILE IMAGE UID CUVC: \(String(describing: userDataNewRegistration.profileImageUID))")
                print("PROFILE IMAGE URL CUVC: \(String(describing: userDataNewRegistration.profileImageURL))")
//                //self.navigationController?.pushViewController(vc, animated: true)
            })
            
            
           // self.navigationController?.pushViewController(vc, animated: true)
            
            
        //
           self.dismiss(animated: true, completion: nil)
            
        } else {
            print(String(describing: registrationError?.localizedDescription))
            self.warninglbl.text = String(describing: registrationError?.localizedDescription)
                           }
                    })
            }
    }
// (STEP 2) - SUCCESSFUL REGISTER - After successful register....Login User.
            
            
// (STEP 3) - SUCCESSFUL LOGIN - After successful login.. upload userdata - profile Image.

//// STEP - 3.B - CREATE UPLOAD FUNCTION
 
        // let userId = Auth.auth().currentUser?.uid
//  self.successImage.isHidden = false
                        
                      //  self.warninglbl.text = "yay"
                        
                        
                        
                    
//self.warninglbl.text = String(describing: registrationError?.localizedDescription)
    
//    @IBAction func backBtnWasPressed(_ sender: Any) {
//           dismiss(animated: true, completion: nil)
//        }
    
    
    
    @objc func returnTextView(gesture: UIGestureRecognizer) {
        guard activeField != nil else {
            return
        }
        
        activeField?.resignFirstResponder()
        activeField = nil
    }
    }

    extension CreateUserVC: UITextFieldDelegate { }






//extension CreateUserVC: UITextFieldDelegate {
//    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
//        activeField = textField
//        lastOffset = self.scrollView.contentOffset
//        return true
//    }
//
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        activeField?.resignFirstResponder()
//        activeField = nil
//        return true
//    }
//}
/////
//
//// MARK: Keyboard Handling
//extension CreateUserVC {
//    @objc func keyboardWillShow(notification: NSNotification) {
//        if keyboardHeight != nil {
//            return
//        }
//
//        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
//            keyboardHeight = keyboardSize.height
//
//            // so increase contentView's height by keyboard height
//            UIView.animate(withDuration: 0.3, animations: {
//                //self.contraintContentCenterY.constant += self.keyboardHeight
//                self.contraintContentCenterY.constant = 50 //self.keyboardHeight
//            })
//
//
//        }
//    }
//
//
//}
//
