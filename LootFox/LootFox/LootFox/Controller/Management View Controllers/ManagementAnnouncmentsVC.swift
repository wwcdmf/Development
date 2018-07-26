//
//  ManagementAnnouncmentsVC.swift
//  LootFox
//
//  Created by Landon Carr on 7/21/18.
//  Copyright © 2018 Landon Carr. All rights reserved.
//

import UIKit
import Foundation

class ManagementAnnouncmentsVC: UIViewController {

// Outlets
    @IBOutlet var MVC: UIView!
    @IBOutlet weak var pushView: UIView!
    @IBOutlet weak var pushViewBottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var profileImage: ProfileImageVew!
    @IBOutlet weak var lastUpdated: UILabel!
    @IBOutlet weak var textBox: UITextField!
    @IBOutlet weak var characterCount: UILabel!
    @IBOutlet weak var changeBtn: UIButton!
    @IBOutlet weak var doneBtn: UIButton!
// Data Variables
      var dataLoaded = false
// View Variables
      var originalBottom: CGFloat?
// ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()

        textBox.isHidden = true
        lastUpdated.isHidden = false
        characterCount.isHidden = true
        
        DataService.instance.getCurrentAnnouncement { (Announcement) in
            self.textBox.text = Announcement.announcement
        }

        
        textBox.addTarget(self, action: #selector(self.textFieldDidChange), for: UIControl.Event.editingChanged)
        textBox.addTarget(self, action: #selector(self.checkMaxLength), for: UIControl.Event.editingChanged)
        
        originalBottom = pushViewBottomConstraint.constant
    }
    
// ViewDidAppear
    override func viewDidAppear(_ animated: Bool) {
        
        
        super.viewDidAppear(animated)
   
        print("\(self.dataLoaded): PHASE 0")
        if self.dataLoaded == false {
            DataService.instance.getCurrentUser { (userData) in
                
                print("LOADING USER DATA INTO MYOFFERS")
                
                self.dataLoaded.toggle()
                print("\(self.dataLoaded): PHASE 1")
                self.profileImage.image = userData.profileImageload
            }
        }
        
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(handleKeyboardDidShow),
                                               name: UIResponder.keyboardWillShowNotification,
                                               object: nil)
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(handleKeyboardWillHide),
                                               name: UIResponder.keyboardWillHideNotification,
                                               object: nil)

        
        DataService.instance.getCurrentAnnouncement { (Announcement) in
            self.textBox.text = Announcement.announcement
        }
        
    }
// Button Functions
    @IBAction func changeBtn(_ sender: Any) {
        
        changeCascade()
    }
    
    @IBAction func doneBtn(_ sender: Any) {
        
        lastUpdated.isHidden = false
        textBox.isHidden = true
        characterCount.isHidden = true
        //
        
        let date = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMMM-dd-yyyy HH:mm"
        let dateString = dateFormatter.string(from: date)
        
        
        
        
        
        
        
        //
        
        DataService.instance.announcmentUpload(announcement: "\(textBox.text ?? "Stay Tuned..") -\(dateString)")
        
        print("The following Announcement was attempted to upload: \(textBox.text ?? "Stay Tuned..") -\(dateString)")
        dismissKeyboard()
        

    }
    
}


// Extension : Creates TextFieldCounter, KeyboardDismiss, Hide UI Objects
extension ManagementAnnouncmentsVC {

    @objc func textFieldDidChange(textField : UITextField){
        characterCount.text = "\(50 - (textBox.text?.count)!): remaining"
    }
    
  @objc func checkMaxLength(textField: UITextField!, maxLength: Int) {
        if ((textBox.text?.count)! > 50) {
            textBox.deleteBackward()
        }
    }
    
    func changeCascade() {
        
        textBox.isHidden.toggle()
        characterCount.isHidden.toggle()
    }
    
    func dismissKeyboard() {
        
         textBox.resignFirstResponder()
    }
    
}

// Extension : Handles Push and Dismiss of keyboard
extension ManagementAnnouncmentsVC {
    
    @objc  func handleKeyboardDidShow (notification: NSNotification)
        
    {
        
        let currentFrame = (notification.userInfo![UIResponder.keyboardFrameBeginUserInfoKey] as! NSValue).cgRectValue
        let targetFrame = (notification.userInfo![UIResponder.keyboardFrameEndUserInfoKey] as! NSValue).cgRectValue
        let deltaY = targetFrame.origin.y - currentFrame.origin.y
        let bottomInset = view.safeAreaInsets.bottom
       
        self.pushViewBottomConstraint.constant =  -deltaY - bottomInset + 20
      
         lastUpdated.isHidden.toggle()
        

        
        UIView.animate(withDuration: 0.5,animations: {
            
            self.view.layoutIfNeeded()
            
        })
        
    }
    
    @objc func handleKeyboardWillHide(notification: NSNotification)
    {
        
   
        self.pushViewBottomConstraint.constant = originalBottom!
        
        UIView.animate(withDuration: 0.5,animations: {
            
            self.view.layoutIfNeeded()
            
        })
        
    }
    
    
}



