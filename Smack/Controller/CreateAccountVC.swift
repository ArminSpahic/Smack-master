//
//  CreateAccountVC.swift
//  Smack
//
//  Created by Armin Spahic on 11/01/2018.
//  Copyright © 2018 Armin Spahic. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {
    
     //  Outlets
    @IBOutlet weak var userImg: UIImageView!
    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!
    @IBOutlet weak var emailTxt: UITextField!
    // Variables
    var avatarName = "profileDefault"
    var avatarColor = "[0.5, 0.5, 0.5, 1]"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        

        // Do any additional setup after loading the view.
   
  
    
}
    @IBAction func createAccntPressed(_ sender: Any) {
        guard let name = usernameTxt.text, usernameTxt.text != "" else {return}
            guard let email = emailTxt.text , emailTxt.text != "" else {return}
            guard let pass = passwordTxt.text , passwordTxt.text != "" else {return}
            
            AuthService.instance.registerUser(email: email, password: pass) { (success) in
                if success {
                    AuthService.instance.loginUser(email: email, password: pass, completion: { (success) in
                        if success {
                            AuthService.instance.createUser(name: name, email: email, avatarName: self.avatarName, avatarColor: self.avatarColor, completion: { (success) in
                                if success {
                                    print (UserDataService.instance.name, UserDataService.instance.avatarName)
                                    self.performSegue(withIdentifier: UNWIND, sender: nil)
                                    
                                }
                            })
                        }
                    })
                }
            }
            
        }
    
    
    
    @IBAction func pickBGColor(_ sender: Any) {
    }
    
    @IBAction func pickAvatarPressed(_ sender: Any) {
    }
    
    
    
    @IBAction func CloseBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
}

