//
//  AuthVC.swift
//  LootFox
//
//  Created by Landon Carr on 6/26/18.
//  Copyright © 2018 Landon Carr. All rights reserved.
//

//
// FONT USED FROM fontmeme.com/3d-fonts/


import UIKit
import Firebase

class AuthVC: UIViewController {

    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        
        
        
        
//        ////
//        let pastelView = PastelView(frame: loadGradientView.bounds)
//        pastelView.startPastelPoint = .bottomLeft
//        pastelView.endPastelPoint = .topRight
//
//        pastelView.animationDuration = 10.0
//
//        pastelView.setPastelGradient(CustomGradient.everlastingSky)
//
//        pastelView.startAnimation()
//        loadGradientView.insertSubview(pastelView, at: 0)
//        ////
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if Auth.auth().currentUser != nil {
//            let MeVC = storyboard?.instantiateViewController(withIdentifier: "MeVC")
//            present(MeVC!, animated: true, completion: nil)
            dismiss(animated: true, completion: nil)
        }
    }
   
    // lOGIN BUTTON PRESSED
    @IBAction func loginInBtnPressed(_ sender: Any) {
        let loginVC = storyboard?.instantiateViewController(withIdentifier: "LoginVC")
        present(loginVC!, animated: true, completion: nil)
    }
    
    // NEW USER BUTTON PRESSED
    @IBAction func newUserBtnPressed(_ sender: Any) {
        let NewUserVC = storyboard?.instantiateViewController(withIdentifier: "NewUserVC")
        present(NewUserVC!, animated: true, completion: nil)
    }
    
    
    // FORGOT PASSWORD PRESSED
//    @IBAction func forgotPasswordBtnPressed(_ sender: Any) {
//        let ForgotPasswordVC = storyboard?.instantiateViewController(withIdentifier: "ForgotPasswordVC")
//        present(ForgotPasswordVC!, animated: true, completion: nil)
//    }
    
    
}


