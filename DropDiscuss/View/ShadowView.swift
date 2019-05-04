//
//  ShadowView.swift
//  DropDiscuss
//
//  Created by Avijeet Sachdev on 5/3/19.
//  Copyright © 2019 Avijeet Sachdev. All rights reserved.
//

import UIKit

class ShadowView: UIView {

    override func awakeFromNib() {
        self.layer.shadowOpacity = 0.75
        self.layer.shadowRadius = 5
        self.layer.shadowColor = UIColor.black.cgColor
        
        super.awakeFromNib()
    }
}
