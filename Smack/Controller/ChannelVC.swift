//
//  ChannelVC.swift
//  Smack
//
//  Created by Armin Spahic on 10/01/2018.
//  Copyright © 2018 Armin Spahic. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    @IBOutlet weak var LoginBtn: UIButton!
    @IBAction func prepareForUnwind(segue:UIStoryboardSegue){}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60

        // Do any additional setup after loading the view.
    }

  
    
    @IBAction func LoginBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_LOGIN, sender: nil)
    }
    
}
