//
//  LoginVC.swift
//  Smack
//
//  Created by Armin Spahic on 11/01/2018.
//  Copyright © 2018 Armin Spahic. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    //Outlets
    
    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!
     @IBOutlet weak var spinner: UIActivityIndicatorView!
    let error = "Bad info"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()

        
    }

  
    @IBAction func CloseBtnPressed(_ sender: Any) {
             dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func loginBtnPressed(_ sender: Any) {
        
        self.spinner.isHidden = false
        self.spinner.startAnimating()
        
        guard let email = usernameTxt.text , usernameTxt.text != "" else {return}
        guard let pass = passwordTxt.text , passwordTxt.text != "" else {return}
        
        AuthService.instance.loginUser(email: email, password: pass) { (success) in
            if success {
                AuthService.instance.findByUserByEmail(completion: { (success) in
                    if success {
                         NotificationCenter.default.post(name: NOTIF_USER_DATA_DID_CHANGE, object: nil)
                        self.spinner.isHidden = true
                        self.spinner.stopAnimating()
                        self.dismiss(animated: true, completion: nil)
                    } 
                })
                
            }
        }
        
    }
    
   
    
    @IBAction func CreateAccntBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_CREATE_ACCOUNT, sender: nil)
    }
    
    func setUpView() {
        spinner.isHidden = true
        usernameTxt.attributedPlaceholder = NSAttributedString(string: "username", attributes: [NSAttributedStringKey.foregroundColor: smackPurplePlaceholder])
        passwordTxt.attributedPlaceholder = NSAttributedString(string: "password", attributes: [NSAttributedStringKey.foregroundColor: smackPurplePlaceholder])
        
        
    }
    
    
}
