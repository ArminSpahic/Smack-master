//
//  RoundedButton.swift
//  Smack
//
//  Created by Armin Spahic on 18/01/2018.
//  Copyright © 2018 Armin Spahic. All rights reserved.
//

import UIKit
@IBDesignable
class RoundedButton: UIButton {

    @IBInspectable var cornerRadius: CGFloat = 3.0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    override func awakeFromNib() {
        self.setupView()
    }
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
    }
    func setupView() {
    
    self.layer.cornerRadius = cornerRadius
    }
}
