//
//  GroupFeedViewController.swift
//  DropDiscuss
//
//  Created by Avijeet Sachdev on 5/12/19.
//  Copyright © 2019 Avijeet Sachdev. All rights reserved.
//

import UIKit

class GroupFeedViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var groupTitleLabel: UILabel!
    
    @IBOutlet weak var sendMessageView: UIView!
    @IBOutlet weak var messageTextField: InsetTextField!
    @IBOutlet weak var sendButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        sendButton.bindToKeyboard()
    }

    @IBAction func backButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func sendButtonPressed(_ sender: Any) {
    }
}
