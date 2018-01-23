//
//  CircleImage.swift
//  Smack
//
//  Created by Armin Spahic on 23/01/2018.
//  Copyright © 2018 Armin Spahic. All rights reserved.
//

import UIKit

class CircleImage: UIImageView {

    override func awakeFromNib() {
        setupView()
        
    }
    
    func setupView() {
        self.layer.cornerRadius = self.frame.width / 2
        self.clipsToBounds = true
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setupView()
    }

}
