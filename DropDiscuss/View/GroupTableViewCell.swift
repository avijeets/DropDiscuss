//
//  GroupTableViewCell.swift
//  DropDiscuss
//
//  Created by Avijeet Sachdev on 5/12/19.
//  Copyright © 2019 Avijeet Sachdev. All rights reserved.
//

import UIKit

class GroupTableViewCell: UITableViewCell {
    
    @IBOutlet weak var groupTitleLabel: UILabel!
    @IBOutlet weak var groupDescriptionLabel: UILabel!
    @IBOutlet weak var memberCountLabel: UILabel!
    
    func configureCell(title: String, description: String, memberCount: Int) {
        self.groupTitleLabel.text = title
        self.groupDescriptionLabel.text = description
        
        if memberCount == 1 {
            self.memberCountLabel.text = "1 member"
        }
        else {
            self.memberCountLabel.text = "\(memberCount) members"
        }
    }
}
