//
//  UserTableViewCell.swift
//  DropDiscuss
//
//  Created by Avijeet Sachdev on 5/5/19.
//  Copyright © 2019 Avijeet Sachdev. All rights reserved.
//

import UIKit

class UserTableViewCell: UITableViewCell {
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var checkImage: UIImageView!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: true)
    }
    func configureCell(profileImage image: UIImage, email: String, isSelected: Bool) {
        self.profileImage.image = image
        self.emailLabel.text = email
        if isSelected {
            self.checkImage.isHidden = false
        }
        else {
            self.checkImage.isHidden = true
        }
        
    }
    

}
