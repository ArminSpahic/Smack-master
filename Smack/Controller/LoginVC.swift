//
//  LoginVC.swift
//  Smack
//
//  Created by Armin Spahic on 11/01/2018.
//  Copyright © 2018 Armin Spahic. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

  
    @IBAction func CloseBtnPressed(_ sender: Any) {
             dismiss(animated: true, completion: nil)
    }
    
    
    
   
    
    @IBAction func CreateAccntBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_CREATE_ACCOUNT, sender: nil)
    }
    
    
}
