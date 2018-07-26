//
//  LoginVC.swift
//  LootFox
//
//  Created by Landon Carr on 6/26/18.
//  Copyright © 2018 Landon Carr. All rights reserved.
//

import UIKit
import Firebase

class LoginVC: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var contentHeightConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var contentView: UIView!

    @IBOutlet weak var emailTxtField: TextFieldView!

    @IBOutlet weak var passwordTxtField: TextFieldView!
   
    var activeField: UITextField?
    var lastOffset: CGPoint!
    var keyboardHeight: CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailTxtField.delegate = self
        passwordTxtField.delegate = self
        
        // Observe keyboard change
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
//        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        
        // Add touch gesture for contentView
        self.contentView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(returnTextView(gesture:))))

        
//        ////
//        let pastelView = PastelView(frame: loginGradientView.bounds)
//        pastelView.startPastelPoint = .bottomLeft
//        pastelView.endPastelPoint = .topRight
//
//        pastelView.animationDuration = 10.0
//
//        pastelView.setPastelGradient(CustomGradient.everlastingSky)
//
//        pastelView.startAnimation()
//        loginGradientView.insertSubview(pastelView, at: 0)
//        ////
        // Do any additional setup after loading the view.
    }
    
    @objc func returnTextView(gesture: UIGestureRecognizer) {
        guard activeField != nil else {
            return
        }
        
        activeField?.resignFirstResponder()
        activeField = nil
    }

    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
//        
//        NotificationCenter.default.addObserver(self,
//                                               selector: #selector(handleKeyboardDidShow),
//                                               name: UIResponder.keyboardWillShowNotification,
//                                               object: nil)
//        
//        NotificationCenter.default.addObserver(self,
//                                               selector: #selector(handleKeyboardWillHide),
//                                               name: UIResponder.keyboardWillHideNotification,
//                                               object: nil)
    }

     @IBAction func backBtnPressed(_ sender: Any) {
    
        
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func loginBtnPressed(_sender: Any) {
        
        
      if emailTxtField.text != nil && passwordTxtField.text != nil  {
        
        AuthService.instance.loginUser(withEmail: emailTxtField.text!, andPassword: passwordTxtField.text!, loginComplete: { (success, registrationError) in
            if success {
                print("successful Login")
                self.dismiss(animated: true, completion: nil)
            } else {
//                self.warningLabel.text = String(describing: registrationError?.localizedDescription)
            }
        })
        } //IF STATEMENT CLOSER
        
        
    } // BUTTON CLOSER
        

    


}


extension LoginVC: UITextFieldDelegate {
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        activeField = textField
        lastOffset = self.scrollView.contentOffset
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        activeField?.resignFirstResponder()
        activeField = nil
        return true
    }
    
}





