//
//  ModalView.swift
//  Smack
//
//  Created by Armin Spahic on 26/01/2018.
//  Copyright © 2018 Armin Spahic. All rights reserved.
//

import UIKit

class ModalView: UIView {
    override func awakeFromNib() {
        setupView()
    }

    func setupView() {
        self.layer.cornerRadius = 10
        self.clipsToBounds = true
    }
}
