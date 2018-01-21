//
//  AvatarCell.swift
//  Smack
//
//  Created by Armin Spahic on 21/01/2018.
//  Copyright © 2018 Armin Spahic. All rights reserved.
//

import UIKit

class AvatarCell: UICollectionViewCell {
    
    @IBOutlet weak var avatarImg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setUpView() {
        self.layer.backgroundColor = UIColor.lightGray.cgColor
        self.layer.cornerRadius = 10
        self.clipsToBounds = true
        setUpView()
    }
    
}
