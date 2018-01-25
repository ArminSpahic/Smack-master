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
    @IBOutlet weak var userImg: CircleImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
        NotificationCenter.default.addObserver(self, selector: #selector(ChannelVC.userDataDidChange(_notif:)), name: NOTIF_USER_DATA_DID_CHANGE, object: nil)

        // Do any additional setup after loading the view.
    }

  
    
    @IBAction func LoginBtnPressed(_ sender: Any) {
        if AuthService.instance.isLoggedIn {
            let profile = ProfileVC()
            profile.modalPresentationStyle = .custom
            present(profile, animated: true , completion: nil)
        } else {
              performSegue(withIdentifier: TO_LOGIN, sender: nil)
        }
      
    }
    @objc func userDataDidChange(_notif: Notification) {
        if AuthService.instance.isLoggedIn {
            LoginBtn.setTitle(UserDataService.instance.name, for: .normal)
            userImg.image = UIImage(named: UserDataService.instance.avatarName)
            userImg.backgroundColor = UserDataService.instance.returnUIColor(components: UserDataService.instance.avatarColor)
        } else {
            LoginBtn.setTitle("Login", for: .normal)
            userImg.image = UIImage(named: "menuProfileIcon")
            userImg.backgroundColor = UIColor.clear
        }
        
    }
}
