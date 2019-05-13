//
//  GroupFeedTableViewCell.swift
//  DropDiscuss
//
//  Created by Avijeet Sachdev on 5/12/19.
//  Copyright © 2019 Avijeet Sachdev. All rights reserved.
//

import UIKit

class GroupFeedTableViewCell: UITableViewCell {
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    

    func configureCell(profileImage: UIImage, email: String, description: String) {
        
        self.profileImage.image = profileImage
        self.emailLabel.text = email
        self.descriptionLabel.text = description
    }
}
