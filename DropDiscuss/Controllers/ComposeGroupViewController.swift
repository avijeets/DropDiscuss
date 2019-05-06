//
//  ComposeGroupViewController.swift
//  DropDiscuss
//
//  Created by Avijeet Sachdev on 5/5/19.
//  Copyright © 2019 Avijeet Sachdev. All rights reserved.
//

import UIKit

class ComposeGroupViewController: UIViewController {
    @IBOutlet weak var titleTextfield: InsetTextField!
    @IBOutlet weak var descriptionTextfield: InsetTextField!
    @IBOutlet weak var emailSearchTextfield: InsetTextField!
    
    @IBOutlet weak var groupMemberStack: UIStackView!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
    
    @IBAction func doneButtonPressed(_ sender: Any) {
    }
    @IBAction func closeButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}

extension ComposeGroupViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "UserCell") as? UserTableViewCell else { return UITableViewCell() }
        
        let profileImage = UIImage.init(named: "defaultProfileImage")
        
        cell.configureCell(profileImage: profileImage!, email: "email@email.com", isSelected: true)
        
        return cell
    }
    
    
}
