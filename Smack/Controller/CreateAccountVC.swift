//
//  CreateAccountVC.swift
//  Smack
//
//  Created by Armin Spahic on 11/01/2018.
//  Copyright © 2018 Armin Spahic. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func closePressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
        
    }
    
}
